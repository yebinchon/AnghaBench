
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bpf_prog_put (void*) ;

__attribute__((used)) static void prog_fd_array_put_ptr(void *ptr)
{
 bpf_prog_put(ptr);
}
