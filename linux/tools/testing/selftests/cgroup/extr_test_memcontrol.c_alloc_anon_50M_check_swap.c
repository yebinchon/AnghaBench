
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MB (int) ;
 int PAGE_SIZE ;
 long cg_read_long (char const*,char*) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int values_close (long,size_t,int) ;

__attribute__((used)) static int alloc_anon_50M_check_swap(const char *cgroup, void *arg)
{
 long mem_max = (long)arg;
 size_t size = MB(50);
 char *buf, *ptr;
 long mem_current, swap_current;
 int ret = -1;

 buf = malloc(size);
 for (ptr = buf; ptr < buf + size; ptr += PAGE_SIZE)
  *ptr = 0;

 mem_current = cg_read_long(cgroup, "memory.current");
 if (!mem_current || !values_close(mem_current, mem_max, 3))
  goto cleanup;

 swap_current = cg_read_long(cgroup, "memory.swap.current");
 if (!swap_current ||
     !values_close(mem_current + swap_current, size, 3))
  goto cleanup;

 ret = 0;
cleanup:
 free(buf);
 return ret;
}
