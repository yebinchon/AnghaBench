
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXMAPPED_SIG ;
 int SIGRTMAX ;
 int SIGRTMIN ;
 int SIGRT_BASE ;
 int SIGUNKNOWN ;
 int* sig_map ;

__attribute__((used)) static inline int map_signal_num(int sig)
{
 if (sig > SIGRTMAX)
  return SIGUNKNOWN;
 else if (sig >= SIGRTMIN)
  return sig - SIGRTMIN + SIGRT_BASE;
 else if (sig < MAXMAPPED_SIG)
  return sig_map[sig];
 return SIGUNKNOWN;
}
