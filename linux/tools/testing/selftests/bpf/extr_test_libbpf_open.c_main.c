
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filename ;


 int EXIT_FAIL_OPTION ;
 int debug ;
 int getopt_long (int,char**,char*,int ,int*) ;
 int libbpf_debug_print ;
 int libbpf_set_print (int ) ;
 int long_options ;
 int optind ;
 int printf (char*) ;
 int snprintf (char*,int,char*,char*) ;
 int test_open_file (char*,int) ;
 int usage (char**) ;

int main(int argc, char **argv)
{
 char filename[1024] = { 0 };
 bool verbose = 1;
 int longindex = 0;
 int opt;

 libbpf_set_print(libbpf_debug_print);


 while ((opt = getopt_long(argc, argv, "hDq",
      long_options, &longindex)) != -1) {
  switch (opt) {
  case 'D':
   debug = 1;
   break;
  case 'q':
   verbose = 0;
   break;
  case 'h':
  default:
   usage(argv);
   return EXIT_FAIL_OPTION;
  }
 }
 if (optind >= argc) {
  usage(argv);
  printf("ERROR: Expected BPF_FILE argument after options\n");
  return EXIT_FAIL_OPTION;
 }
 snprintf(filename, sizeof(filename), "%s", argv[optind]);

 return test_open_file(filename, verbose);
}
