
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map_info {int key_size; int value_size; int type; } ;


 int fprint_hex (int ,unsigned char*,int,char*) ;
 unsigned int get_possible_cpus () ;
 int map_is_per_cpu (int ) ;
 int printf (char*,...) ;
 unsigned int round_up (int,int) ;
 int stdout ;

__attribute__((used)) static void print_entry_plain(struct bpf_map_info *info, unsigned char *key,
         unsigned char *value)
{
 if (!map_is_per_cpu(info->type)) {
  bool single_line, break_names;

  break_names = info->key_size > 16 || info->value_size > 16;
  single_line = info->key_size + info->value_size <= 24 &&
   !break_names;

  if (info->key_size) {
   printf("key:%c", break_names ? '\n' : ' ');
   fprint_hex(stdout, key, info->key_size, " ");

   printf(single_line ? "  " : "\n");
  }

  if (info->value_size) {
   printf("value:%c", break_names ? '\n' : ' ');
   fprint_hex(stdout, value, info->value_size, " ");
  }

  printf("\n");
 } else {
  unsigned int i, n, step;

  n = get_possible_cpus();
  step = round_up(info->value_size, 8);

  if (info->key_size) {
   printf("key:\n");
   fprint_hex(stdout, key, info->key_size, " ");
   printf("\n");
  }
  if (info->value_size) {
   for (i = 0; i < n; i++) {
    printf("value (CPU %02d):%c",
           i, info->value_size > 16 ? '\n' : ' ');
    fprint_hex(stdout, value + i * step,
        info->value_size, " ");
    printf("\n");
   }
  }
 }
}
