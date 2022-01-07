
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int __get_unaligned_cpu32 (int *) ;
 int jhash_1word (int ,int ) ;

__attribute__((used)) static u32 mesh_table_hash(const void *addr, u32 len, u32 seed)
{

 return jhash_1word(__get_unaligned_cpu32((u8 *)addr + 2), seed);
}
