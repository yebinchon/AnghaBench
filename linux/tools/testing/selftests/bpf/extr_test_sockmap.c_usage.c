
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int* flag; int val; } ;


 TYPE_1__* long_options ;
 int printf (char*,...) ;

__attribute__((used)) static void usage(char *argv[])
{
 int i;

 printf(" Usage: %s --cgroup <cgroup_path>\n", argv[0]);
 printf(" options:\n");
 for (i = 0; long_options[i].name != 0; i++) {
  printf(" --%-12s", long_options[i].name);
  if (long_options[i].flag != ((void*)0))
   printf(" flag (internal value:%d)\n",
    *long_options[i].flag);
  else
   printf(" -%c\n", long_options[i].val);
 }
 printf("\n");
}
