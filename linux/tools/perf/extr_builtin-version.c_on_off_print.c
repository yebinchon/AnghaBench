
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PERF_COLOR_GREEN ;
 int PERF_COLOR_RED ;
 int color_fprintf (int ,int ,char*,char const*) ;
 int printf (char*) ;
 int stdout ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void on_off_print(const char *status)
{
 printf("[ ");

 if (!strcmp(status, "OFF"))
  color_fprintf(stdout, PERF_COLOR_RED, "%-3s", status);
 else
  color_fprintf(stdout, PERF_COLOR_GREEN, "%-3s", status);

 printf(" ]");
}
