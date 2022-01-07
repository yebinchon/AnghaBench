
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PERF_PAGER_ENVIRONMENT ;
 int setenv (int ,char*,int) ;
 int use_pager ;

__attribute__((used)) static void commit_pager_choice(void)
{
 switch (use_pager) {
 case 0:
  setenv(PERF_PAGER_ENVIRONMENT, "cat", 1);
  break;
 case 1:

  break;
 default:
  break;
 }
}
