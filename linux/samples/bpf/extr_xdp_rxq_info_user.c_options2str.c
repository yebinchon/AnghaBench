
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cfg_options_flags { ____Placeholder_cfg_options_flags } cfg_options_flags ;


 int EXIT_FAIL ;
 int NO_TOUCH ;
 int READ_MEM ;
 int SWAP_MAC ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static char* options2str(enum cfg_options_flags flag)
{
 if (flag == NO_TOUCH)
  return "no_touch";
 if (flag & SWAP_MAC)
  return "swapmac";
 if (flag & READ_MEM)
  return "read";
 fprintf(stderr, "ERR: Unknown config option flags");
 exit(EXIT_FAIL);
}
