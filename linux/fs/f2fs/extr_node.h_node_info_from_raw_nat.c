
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_info {int version; void* blk_addr; void* ino; } ;
struct f2fs_nat_entry {int version; int block_addr; int ino; } ;


 void* le32_to_cpu (int ) ;

__attribute__((used)) static inline void node_info_from_raw_nat(struct node_info *ni,
      struct f2fs_nat_entry *raw_ne)
{
 ni->ino = le32_to_cpu(raw_ne->ino);
 ni->blk_addr = le32_to_cpu(raw_ne->block_addr);
 ni->version = raw_ne->version;
}
