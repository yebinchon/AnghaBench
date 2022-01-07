
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_main () ;
 int parse_opts (int,char**) ;
 int print_opts () ;

int main(int argc, char **argv)
{
 parse_opts(argc, argv);
 print_opts();
 return do_main();
}
