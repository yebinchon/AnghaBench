
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int BPF_MAP_GET_NEXT_ID ;
 int bpf_obj_get_next_id (int ,int *,int ) ;

int bpf_map_get_next_id(__u32 start_id, __u32 *next_id)
{
 return bpf_obj_get_next_id(start_id, next_id, BPF_MAP_GET_NEXT_ID);
}
