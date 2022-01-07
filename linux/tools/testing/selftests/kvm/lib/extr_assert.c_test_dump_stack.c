
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t backtrace (void**,size_t) ;
 int sprintf (char*,char*,...) ;
 scalar_t__ strlen (char const*) ;
 int system (char*) ;

__attribute__((used)) static void test_dump_stack(void)
{
 size_t i;
 size_t n = 20;
 void *stack[n];
 const char *addr2line = "addr2line -s -e /proc/$PPID/exe -fpai";
 const char *pipeline = "|cat -n 1>&2";
 char cmd[strlen(addr2line) + strlen(pipeline) +

   n * (((sizeof(void *)) * 2) + 1) +

   1];
 char *c;

 n = backtrace(stack, n);
 c = &cmd[0];
 c += sprintf(c, "%s", addr2line);





 for (i = 2; i < n; i++)
  c += sprintf(c, " %lx", ((unsigned long) stack[i]) - 1);
 c += sprintf(c, "%s", pipeline);
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunused-result"
 system(cmd);
#pragma GCC diagnostic pop
}
