
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rlim_t ;


 scalar_t__ RLIM_INFINITY ;
 scalar_t__ dso__data_open_cnt ;
 scalar_t__ fd_limit ;
 scalar_t__ get_fd_limit () ;

__attribute__((used)) static bool may_cache_fd(void)
{
 if (!fd_limit)
  fd_limit = get_fd_limit();

 if (fd_limit == RLIM_INFINITY)
  return 1;

 return fd_limit > (rlim_t) dso__data_open_cnt;
}
