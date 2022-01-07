
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int n_free_nodes; int first_free; scalar_t__ n_used_nodes; } ;
struct anode {TYPE_1__ btree; void* self; void* magic; } ;
typedef int secno ;
typedef int anode_secno ;


 int ANODE_ALLOC_FWD ;
 int ANODE_MAGIC ;
 int cpu_to_le16 (int) ;
 void* cpu_to_le32 (int ) ;
 int hpfs_alloc_sector (struct super_block*,int ,int,int ) ;
 int hpfs_free_sectors (struct super_block*,int ,int) ;
 struct anode* hpfs_get_sector (struct super_block*,int ,struct buffer_head**) ;
 int memset (struct anode*,int ,int) ;

struct anode *hpfs_alloc_anode(struct super_block *s, secno near, anode_secno *ano,
     struct buffer_head **bh)
{
 struct anode *a;
 if (!(*ano = hpfs_alloc_sector(s, near, 1, ANODE_ALLOC_FWD))) return ((void*)0);
 if (!(a = hpfs_get_sector(s, *ano, bh))) {
  hpfs_free_sectors(s, *ano, 1);
  return ((void*)0);
 }
 memset(a, 0, 512);
 a->magic = cpu_to_le32(ANODE_MAGIC);
 a->self = cpu_to_le32(*ano);
 a->btree.n_free_nodes = 40;
 a->btree.n_used_nodes = 0;
 a->btree.first_free = cpu_to_le16(8);
 return a;
}
