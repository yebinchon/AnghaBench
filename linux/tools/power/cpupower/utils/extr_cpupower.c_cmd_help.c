
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int print_help () ;
 int print_man_page (char const*) ;

__attribute__((used)) static int cmd_help(int argc, const char **argv)
{
 if (argc > 1) {
  print_man_page(argv[1]);
  return EXIT_FAILURE;
 }

 print_help();
 return EXIT_SUCCESS;
}
