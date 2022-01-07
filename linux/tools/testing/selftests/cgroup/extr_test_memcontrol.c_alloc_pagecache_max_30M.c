
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long MB (int) ;
 scalar_t__ alloc_pagecache (int,size_t) ;
 long cg_read_long (char const*,char*) ;
 int close (int) ;
 int get_temp_fd () ;

__attribute__((used)) static int alloc_pagecache_max_30M(const char *cgroup, void *arg)
{
 size_t size = MB(50);
 int ret = -1;
 long current;
 int fd;

 fd = get_temp_fd();
 if (fd < 0)
  return -1;

 if (alloc_pagecache(fd, size))
  goto cleanup;

 current = cg_read_long(cgroup, "memory.current");
 if (current <= MB(29) || current > MB(30))
  goto cleanup;

 ret = 0;

cleanup:
 close(fd);
 return ret;

}
