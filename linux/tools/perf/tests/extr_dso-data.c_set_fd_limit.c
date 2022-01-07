
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_cur; } ;


 int RLIMIT_NOFILE ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;
 int pr_debug (char*,long,int) ;
 int setrlimit (int ,struct rlimit*) ;

__attribute__((used)) static int set_fd_limit(int n)
{
 struct rlimit rlim;

 if (getrlimit(RLIMIT_NOFILE, &rlim))
  return -1;

 pr_debug("file limit %ld, new %d\n", (long) rlim.rlim_cur, n);

 rlim.rlim_cur = n;
 return setrlimit(RLIMIT_NOFILE, &rlim);
}
