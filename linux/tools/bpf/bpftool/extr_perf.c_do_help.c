
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* bin_name ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static int do_help(int argc, char **argv)
{
 fprintf(stderr,
  "Usage: %s %s { show | list | help }\n"
  "",
  bin_name, argv[-2]);

 return 0;
}
