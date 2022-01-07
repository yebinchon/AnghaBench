
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int absolute_percpu ;
 int all_symbols ;
 int base_relative ;
 int make_percpus_absolute () ;
 int optimize_token_table () ;
 int read_map (int ) ;
 int record_relative_base () ;
 int sort_symbols () ;
 int stdin ;
 scalar_t__ strcmp (char*,char*) ;
 int usage () ;
 int write_src () ;

int main(int argc, char **argv)
{
 if (argc >= 2) {
  int i;
  for (i = 1; i < argc; i++) {
   if(strcmp(argv[i], "--all-symbols") == 0)
    all_symbols = 1;
   else if (strcmp(argv[i], "--absolute-percpu") == 0)
    absolute_percpu = 1;
   else if (strcmp(argv[i], "--base-relative") == 0)
    base_relative = 1;
   else
    usage();
  }
 } else if (argc != 1)
  usage();

 read_map(stdin);
 if (absolute_percpu)
  make_percpus_absolute();
 if (base_relative)
  record_relative_base();
 sort_symbols();
 optimize_token_table();
 write_src();

 return 0;
}
