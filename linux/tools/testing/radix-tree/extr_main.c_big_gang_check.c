
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __big_gang_check () ;
 int fflush (int ) ;
 int printv (int,char*,int) ;
 int stdout ;

void big_gang_check(bool long_run)
{
 int i;

 for (i = 0; i < (long_run ? 1000 : 3); i++) {
  __big_gang_check();
  printv(2, "%d ", i);
  fflush(stdout);
 }
}
