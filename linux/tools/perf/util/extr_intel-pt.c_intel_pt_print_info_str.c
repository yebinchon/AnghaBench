
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_trace ;
 int fprintf (int ,char*,char const*,char const*) ;
 int stdout ;

__attribute__((used)) static void intel_pt_print_info_str(const char *name, const char *str)
{
 if (!dump_trace)
  return;

 fprintf(stdout, "  %-20s%s\n", name, str ? str : "");
}
