
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MB (int) ;
 int alloc_pagecache (int,int ) ;

__attribute__((used)) static int alloc_pagecache_50M(const char *cgroup, void *arg)
{
 int fd = (long)arg;

 return alloc_pagecache(fd, MB(50));
}
