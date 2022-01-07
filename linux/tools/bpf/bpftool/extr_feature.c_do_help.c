
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* bin_name ;
 int fprintf (int ,char*,char*,char*,char*,char*) ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_null (int ) ;
 int stderr ;

__attribute__((used)) static int do_help(int argc, char **argv)
{
 if (json_output) {
  jsonw_null(json_wtr);
  return 0;
 }

 fprintf(stderr,
  "Usage: %s %s probe [COMPONENT] [macros [prefix PREFIX]]\n"
  "       %s %s help\n"
  "\n"
  "       COMPONENT := { kernel | dev NAME }\n"
  "",
  bin_name, argv[-2], bin_name, argv[-2]);

 return 0;
}
