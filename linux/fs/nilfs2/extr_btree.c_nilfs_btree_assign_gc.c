
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* bi_blkoff; void* bi_vblocknr; } ;
union nilfs_binfo {TYPE_1__ bi_v; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
struct buffer_head {int b_blocknr; scalar_t__ b_data; } ;
typedef int sector_t ;
typedef int __u64 ;


 scalar_t__ buffer_nilfs_node (struct buffer_head*) ;
 void* cpu_to_le64 (int ) ;
 int nilfs_bmap_data_get_key (struct nilfs_bmap*,struct buffer_head*) ;
 int nilfs_bmap_get_dat (struct nilfs_bmap*) ;
 int nilfs_btree_node_get_key (struct nilfs_btree_node*,int ) ;
 int nilfs_dat_move (int ,int ,int ) ;

__attribute__((used)) static int nilfs_btree_assign_gc(struct nilfs_bmap *btree,
     struct buffer_head **bh,
     sector_t blocknr,
     union nilfs_binfo *binfo)
{
 struct nilfs_btree_node *node;
 __u64 key;
 int ret;

 ret = nilfs_dat_move(nilfs_bmap_get_dat(btree), (*bh)->b_blocknr,
        blocknr);
 if (ret < 0)
  return ret;

 if (buffer_nilfs_node(*bh)) {
  node = (struct nilfs_btree_node *)(*bh)->b_data;
  key = nilfs_btree_node_get_key(node, 0);
 } else
  key = nilfs_bmap_data_get_key(btree, *bh);


 binfo->bi_v.bi_vblocknr = cpu_to_le64((*bh)->b_blocknr);
 binfo->bi_v.bi_blkoff = cpu_to_le64(key);

 return 0;
}
