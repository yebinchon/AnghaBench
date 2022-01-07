
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_entry {char* sym; int addr; scalar_t__ percpu_absolute; scalar_t__ len; } ;
typedef int FILE ;


 int ARRAY_SIZE (int *) ;
 int EOF ;
 int EXIT_FAILURE ;
 scalar_t__ KSYM_NAME_LEN ;
 int _text ;
 scalar_t__ check_symbol_range (char*,int ,int *,int) ;
 int exit (int ) ;
 int * fgets (char*,int,int *) ;
 int fprintf (int ,char*,...) ;
 int fscanf (int *,char*,int *,char*,char*) ;
 scalar_t__ is_arm_mapping_symbol (char*) ;
 char* malloc (scalar_t__) ;
 int percpu_range ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int strncmp (char*,char*,int) ;
 int * text_ranges ;
 unsigned char toupper (char) ;

__attribute__((used)) static int read_symbol(FILE *in, struct sym_entry *s)
{
 char sym[500], stype;
 int rc;

 rc = fscanf(in, "%llx %c %499s\n", &s->addr, &stype, sym);
 if (rc != 3) {
  if (rc != EOF && fgets(sym, 500, in) == ((void*)0))
   fprintf(stderr, "Read error or end of file.\n");
  return -1;
 }
 if (strlen(sym) >= KSYM_NAME_LEN) {
  fprintf(stderr, "Symbol %s too long for kallsyms (%zu >= %d).\n"
    "Please increase KSYM_NAME_LEN both in kernel and kallsyms.c\n",
   sym, strlen(sym), KSYM_NAME_LEN);
  return -1;
 }


 if (strcmp(sym, "_text") == 0)
  _text = s->addr;
 else if (check_symbol_range(sym, s->addr, text_ranges,
        ARRAY_SIZE(text_ranges)) == 0)
                     ;
 else if (toupper(stype) == 'A')
 {

  if (strcmp(sym, "__kernel_syscall_via_break") &&
      strcmp(sym, "__kernel_syscall_via_epc") &&
      strcmp(sym, "__kernel_sigtramp") &&
      strcmp(sym, "__gp"))
   return -1;

 }
 else if (toupper(stype) == 'U' ||
   is_arm_mapping_symbol(sym))
  return -1;

 else if (sym[0] == '$')
  return -1;

 else if (stype == 'N' || stype == 'n')
  return -1;

 else if (!strncmp(sym, ".LASANPC", 8))
  return -1;



 s->len = strlen(sym) + 1;
 s->sym = malloc(s->len + 1);
 if (!s->sym) {
  fprintf(stderr, "kallsyms failure: "
   "unable to allocate required amount of memory\n");
  exit(EXIT_FAILURE);
 }
 strcpy((char *)s->sym + 1, sym);
 s->sym[0] = stype;

 s->percpu_absolute = 0;


 check_symbol_range(sym, s->addr, &percpu_range, 1);

 return 0;
}
