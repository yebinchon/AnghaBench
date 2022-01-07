
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int free (char*) ;
 char* malloc (size_t) ;

int alloc_anon(const char *cgroup, void *arg)
{
 size_t size = (unsigned long)arg;
 char *buf, *ptr;

 buf = malloc(size);
 for (ptr = buf; ptr < buf + size; ptr += PAGE_SIZE)
  *ptr = 0;

 free(buf);
 return 0;
}
