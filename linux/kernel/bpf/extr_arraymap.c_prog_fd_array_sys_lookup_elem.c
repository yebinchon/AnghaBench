
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_2__ {int id; } ;



__attribute__((used)) static u32 prog_fd_array_sys_lookup_elem(void *ptr)
{
 return ((struct bpf_prog *)ptr)->aux->id;
}
