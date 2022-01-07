
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map_memory {int user; int pages; } ;


 int bpf_uncharge_memlock (int ,int ) ;
 int free_uid (int ) ;

void bpf_map_charge_finish(struct bpf_map_memory *mem)
{
 bpf_uncharge_memlock(mem->user, mem->pages);
 free_uid(mem->user);
}
