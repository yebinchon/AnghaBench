
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error_cnt ;
 int fprintf (int ,char*,int,int,int) ;
 int pass_cnt ;
 int skip_cnt ;
 int stderr ;

__attribute__((used)) static void print_summary(void)
{
 fprintf(stderr, "PASS:%u SKIP:%u FAIL:%u\n",
  pass_cnt - skip_cnt, skip_cnt, error_cnt);
}
