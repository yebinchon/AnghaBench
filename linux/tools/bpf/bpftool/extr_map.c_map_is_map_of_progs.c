
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;


 scalar_t__ BPF_MAP_TYPE_PROG_ARRAY ;

__attribute__((used)) static bool map_is_map_of_progs(__u32 type)
{
 return type == BPF_MAP_TYPE_PROG_ARRAY;
}
