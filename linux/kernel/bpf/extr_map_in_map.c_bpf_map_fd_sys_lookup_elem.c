
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bpf_map {int id; } ;



u32 bpf_map_fd_sys_lookup_elem(void *ptr)
{
 return ((struct bpf_map *)ptr)->id;
}
