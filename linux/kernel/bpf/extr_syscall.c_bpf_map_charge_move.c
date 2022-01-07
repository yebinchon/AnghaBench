
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map_memory {int dummy; } ;


 int memset (struct bpf_map_memory*,int ,int) ;

void bpf_map_charge_move(struct bpf_map_memory *dst,
    struct bpf_map_memory *src)
{
 *dst = *src;


 memset(src, 0, sizeof(struct bpf_map_memory));
}
