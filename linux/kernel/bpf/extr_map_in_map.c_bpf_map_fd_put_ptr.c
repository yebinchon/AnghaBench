
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bpf_map_put (void*) ;

void bpf_map_fd_put_ptr(void *ptr)
{



 bpf_map_put(ptr);
}
