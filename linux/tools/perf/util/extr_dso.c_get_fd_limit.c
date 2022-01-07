
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_cur; } ;
typedef int rlim_t ;


 int RLIMIT_NOFILE ;
 int RLIM_INFINITY ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;
 int pr_err (char*) ;

__attribute__((used)) static rlim_t get_fd_limit(void)
{
 struct rlimit l;
 rlim_t limit = 0;


 if (getrlimit(RLIMIT_NOFILE, &l) == 0) {
  if (l.rlim_cur == RLIM_INFINITY)
   limit = l.rlim_cur;
  else
   limit = l.rlim_cur / 2;
 } else {
  pr_err("failed to get fd limit\n");
  limit = 1;
 }

 return limit;
}
