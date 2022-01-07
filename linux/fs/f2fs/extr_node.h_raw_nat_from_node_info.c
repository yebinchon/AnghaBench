
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_info {int version; int blk_addr; int ino; } ;
struct f2fs_nat_entry {int version; void* block_addr; void* ino; } ;


 void* cpu_to_le32 (int ) ;

__attribute__((used)) static inline void raw_nat_from_node_info(struct f2fs_nat_entry *raw_ne,
      struct node_info *ni)
{
 raw_ne->ino = cpu_to_le32(ni->ino);
 raw_ne->block_addr = cpu_to_le32(ni->blk_addr);
 raw_ne->version = ni->version;
}
