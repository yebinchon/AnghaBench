
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_cur; int rlim_max; } ;


 int RLIMIT_MEMLOCK ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;
 int pr_debug (char*) ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;

void rlimit__bump_memlock(void)
{
 struct rlimit rlim;

 if (getrlimit(RLIMIT_MEMLOCK, &rlim) == 0) {
  rlim.rlim_cur *= 4;
  rlim.rlim_max *= 4;

  if (setrlimit(RLIMIT_MEMLOCK, &rlim) < 0) {
   rlim.rlim_cur /= 2;
   rlim.rlim_max /= 2;

   if (setrlimit(RLIMIT_MEMLOCK, &rlim) < 0)
    pr_debug("Couldn't bump rlimit(MEMLOCK), failures may take place when creating BPF maps, etc\n");
  }
 }
}
