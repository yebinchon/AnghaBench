
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MB (int) ;
 scalar_t__ alloc_pagecache (int,int ) ;
 int getppid () ;
 int sleep (int) ;

__attribute__((used)) static int alloc_pagecache_50M_noexit(const char *cgroup, void *arg)
{
 int fd = (long)arg;
 int ppid = getppid();

 if (alloc_pagecache(fd, MB(50)))
  return -1;

 while (getppid() == ppid)
  sleep(1);

 return 0;
}
