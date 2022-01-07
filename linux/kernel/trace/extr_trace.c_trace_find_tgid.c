
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PID_MAX_DEFAULT ;
 int* tgid_map ;
 scalar_t__ unlikely (int) ;

int trace_find_tgid(int pid)
{
 if (unlikely(!tgid_map || !pid || pid > PID_MAX_DEFAULT))
  return 0;

 return tgid_map[pid];
}
