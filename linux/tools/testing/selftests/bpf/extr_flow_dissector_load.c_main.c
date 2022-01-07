
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cfg_attach ;
 int detach_program () ;
 int load_and_attach_program () ;
 int parse_opts (int,char**) ;

int main(int argc, char **argv)
{
 parse_opts(argc, argv);
 if (cfg_attach)
  load_and_attach_program();
 else
  detach_program();
 return 0;
}
