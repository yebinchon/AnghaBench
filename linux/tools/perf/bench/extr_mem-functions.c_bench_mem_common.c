
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bench_mem_info {TYPE_1__* functions; int usage; } ;
typedef scalar_t__ s64 ;
struct TYPE_2__ {char* name; char* desc; } ;


 int __bench_mem_function (struct bench_mem_info*,int,size_t,double) ;
 int fprintf (int ,char*,...) ;
 char* function_str ;
 int init_cycles () ;
 double nr_loops ;
 int options ;
 int parse_options (int,char const**,int ,int ,int ) ;
 scalar_t__ perf_atoll (char*) ;
 int printf (char*,...) ;
 char* size_str ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int strncmp (char*,char*,int) ;
 scalar_t__ use_cycles ;

__attribute__((used)) static int bench_mem_common(int argc, const char **argv, struct bench_mem_info *info)
{
 int i;
 size_t size;
 double size_total;

 argc = parse_options(argc, argv, options, info->usage, 0);

 if (use_cycles) {
  i = init_cycles();
  if (i < 0) {
   fprintf(stderr, "Failed to open cycles counter\n");
   return i;
  }
 }

 size = (size_t)perf_atoll((char *)size_str);
 size_total = (double)size * nr_loops;

 if ((s64)size <= 0) {
  fprintf(stderr, "Invalid size:%s\n", size_str);
  return 1;
 }

 if (!strncmp(function_str, "all", 3)) {
  for (i = 0; info->functions[i].name; i++)
   __bench_mem_function(info, i, size, size_total);
  return 0;
 }

 for (i = 0; info->functions[i].name; i++) {
  if (!strcmp(info->functions[i].name, function_str))
   break;
 }
 if (!info->functions[i].name) {
  if (strcmp(function_str, "help") && strcmp(function_str, "h"))
   printf("Unknown function: %s\n", function_str);
  printf("Available functions:\n");
  for (i = 0; info->functions[i].name; i++) {
   printf("\t%s ... %s\n",
          info->functions[i].name, info->functions[i].desc);
  }
  return 1;
 }

 __bench_mem_function(info, i, size, size_total);

 return 0;
}
