
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BPF_MAP_TYPE_ARRAY ;
 int bpf_create_map (int ,int,int,int,int ) ;

__attribute__((used)) static int bpf_map_create(void)
{
 return bpf_create_map(BPF_MAP_TYPE_ARRAY, sizeof(uint32_t),
         sizeof(uint32_t), 1024, 0);
}
