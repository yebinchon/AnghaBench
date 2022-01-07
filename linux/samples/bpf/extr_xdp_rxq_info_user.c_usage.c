
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int* flag; int val; } ;


 char* __doc__ ;
 int list_xdp_actions () ;
 TYPE_1__* long_options ;
 int printf (char*,...) ;

__attribute__((used)) static void usage(char *argv[])
{
 int i;

 printf("\nDOCUMENTATION:\n%s\n", __doc__);
 printf(" Usage: %s (options-see-below)\n", argv[0]);
 printf(" Listing options:\n");
 for (i = 0; long_options[i].name != 0; i++) {
  printf(" --%-12s", long_options[i].name);
  if (long_options[i].flag != ((void*)0))
   printf(" flag (internal value:%d)",
    *long_options[i].flag);
  else
   printf(" short-option: -%c",
    long_options[i].val);
  printf("\n");
 }
 printf("\n");
 list_xdp_actions();
}
