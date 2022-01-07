
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int addr; int len; int* sym; } ;


 int EXIT_FAILURE ;
 long long INT_MAX ;
 long long INT_MIN ;
 int KSYM_NAME_LEN ;
 long long UINT_MAX ;
 int _text ;
 int absolute_percpu ;
 scalar_t__ base_relative ;
 int * best_table ;
 int * best_table_len ;
 int exit (int ) ;
 int expand_symbol (int ,int ,char*) ;
 int fprintf (int ,char*,...) ;
 int free (unsigned int*) ;
 unsigned int* malloc (int) ;
 int output_label (char*) ;
 int printf (char*,...) ;
 int relative_base ;
 int stderr ;
 scalar_t__ strlen (char*) ;
 scalar_t__ symbol_absolute (TYPE_1__*) ;
 TYPE_1__* table ;
 unsigned int table_cnt ;

__attribute__((used)) static void write_src(void)
{
 unsigned int i, k, off;
 unsigned int best_idx[256];
 unsigned int *markers;
 char buf[KSYM_NAME_LEN];

 printf("#include <asm/bitsperlong.h>\n");
 printf("#if BITS_PER_LONG == 64\n");
 printf("#define PTR .quad\n");
 printf("#define ALGN .balign 8\n");
 printf("#else\n");
 printf("#define PTR .long\n");
 printf("#define ALGN .balign 4\n");
 printf("#endif\n");

 printf("\t.section .rodata, \"a\"\n");
 if (!base_relative)
  output_label("kallsyms_addresses");
 else
  output_label("kallsyms_offsets");

 for (i = 0; i < table_cnt; i++) {
  if (base_relative) {
   long long offset;
   int overflow;

   if (!absolute_percpu) {
    offset = table[i].addr - relative_base;
    overflow = (offset < 0 || offset > UINT_MAX);
   } else if (symbol_absolute(&table[i])) {
    offset = table[i].addr;
    overflow = (offset < 0 || offset > INT_MAX);
   } else {
    offset = relative_base - table[i].addr - 1;
    overflow = (offset < INT_MIN || offset >= 0);
   }
   if (overflow) {
    fprintf(stderr, "kallsyms failure: "
     "%s symbol value %#llx out of range in relative mode\n",
     symbol_absolute(&table[i]) ? "absolute" : "relative",
     table[i].addr);
    exit(EXIT_FAILURE);
   }
   printf("\t.long\t%#x\n", (int)offset);
  } else if (!symbol_absolute(&table[i])) {
   if (_text <= table[i].addr)
    printf("\tPTR\t_text + %#llx\n",
     table[i].addr - _text);
   else
    printf("\tPTR\t_text - %#llx\n",
     _text - table[i].addr);
  } else {
   printf("\tPTR\t%#llx\n", table[i].addr);
  }
 }
 printf("\n");

 if (base_relative) {
  output_label("kallsyms_relative_base");
  printf("\tPTR\t_text - %#llx\n", _text - relative_base);
  printf("\n");
 }

 output_label("kallsyms_num_syms");
 printf("\t.long\t%u\n", table_cnt);
 printf("\n");



 markers = malloc(sizeof(unsigned int) * ((table_cnt + 255) / 256));
 if (!markers) {
  fprintf(stderr, "kallsyms failure: "
   "unable to allocate required memory\n");
  exit(EXIT_FAILURE);
 }

 output_label("kallsyms_names");
 off = 0;
 for (i = 0; i < table_cnt; i++) {
  if ((i & 0xFF) == 0)
   markers[i >> 8] = off;

  printf("\t.byte 0x%02x", table[i].len);
  for (k = 0; k < table[i].len; k++)
   printf(", 0x%02x", table[i].sym[k]);
  printf("\n");

  off += table[i].len + 1;
 }
 printf("\n");

 output_label("kallsyms_markers");
 for (i = 0; i < ((table_cnt + 255) >> 8); i++)
  printf("\t.long\t%u\n", markers[i]);
 printf("\n");

 free(markers);

 output_label("kallsyms_token_table");
 off = 0;
 for (i = 0; i < 256; i++) {
  best_idx[i] = off;
  expand_symbol(best_table[i], best_table_len[i], buf);
  printf("\t.asciz\t\"%s\"\n", buf);
  off += strlen(buf) + 1;
 }
 printf("\n");

 output_label("kallsyms_token_index");
 for (i = 0; i < 256; i++)
  printf("\t.short\t%d\n", best_idx[i]);
 printf("\n");
}
