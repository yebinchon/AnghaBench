
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int **) ;
 int BUG_ON (int) ;
 int printf (char*) ;
 int run_bench_numa (int ,int *) ;
 int system (char*) ;
 int ** tests ;

__attribute__((used)) static int bench_all(void)
{
 int nr = ARRAY_SIZE(tests);
 int ret;
 int i;

 ret = system("echo ' #'; echo ' # Running test on: '$(uname -a); echo ' #'");
 BUG_ON(ret < 0);

 for (i = 0; i < nr; i++) {
  run_bench_numa(tests[i][0], tests[i] + 1);
 }

 printf("\n");

 return 0;
}
