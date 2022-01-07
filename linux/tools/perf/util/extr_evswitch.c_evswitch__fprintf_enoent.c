
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,...) ;

__attribute__((used)) static int evswitch__fprintf_enoent(FILE *fp, const char *evtype, const char *evname)
{
 int printed = fprintf(fp, "ERROR: switch-%s event not found (%s)\n", evtype, evname);

 return printed += fprintf(fp, "HINT:  use 'perf evlist' to see the available event names\n");
}
