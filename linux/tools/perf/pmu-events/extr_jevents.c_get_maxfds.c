
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {scalar_t__ rlim_max; } ;


 int RLIMIT_NOFILE ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;
 int min (int,int) ;

__attribute__((used)) static int get_maxfds(void)
{
 struct rlimit rlim;

 if (getrlimit(RLIMIT_NOFILE, &rlim) == 0)
  return min((int)rlim.rlim_max / 2, 512);

 return 512;
}
