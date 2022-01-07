
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ubifs_znode {int child_cnt; int level; int lnum; int offs; int len; size_t iip; int flags; struct ubifs_zbranch* zbranch; struct ubifs_znode* parent; } ;
struct ubifs_zbranch {int lnum; int offs; int len; int * hash; struct ubifs_znode* znode; int key; } ;
struct TYPE_4__ {int lnum; int offs; int len; int * hash; } ;
struct ubifs_info {int dirty_zn_cnt; int calc_idx_sz; TYPE_2__ zroot; } ;
struct TYPE_3__ {int node_type; } ;
struct ubifs_idx_node {void* level; void* child_cnt; TYPE_1__ ch; } ;
struct ubifs_branch {void* len; void* offs; void* lnum; int key; } ;


 scalar_t__ ALIGN (int,int) ;
 int COW_ZNODE ;
 int DIRTY_ZNODE ;
 int EINVAL ;
 int UBIFS_HASH_ARR_SZ ;
 int UBIFS_IDX_NODE ;
 int __clear_bit (int ,int *) ;
 int atomic_long_dec (int *) ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 int insert_old_idx_znode (struct ubifs_info*,struct ubifs_znode*) ;
 int key_write_idx (struct ubifs_info*,int *,int *) ;
 int ubifs_assert (struct ubifs_info*,int ) ;
 int * ubifs_branch_hash (struct ubifs_info*,struct ubifs_branch*) ;
 int ubifs_copy_hash (struct ubifs_info*,int *,int *) ;
 int ubifs_dump_znode (struct ubifs_info*,struct ubifs_znode*) ;
 int ubifs_err (struct ubifs_info*,char*) ;
 struct ubifs_branch* ubifs_idx_branch (struct ubifs_info*,struct ubifs_idx_node*,int) ;
 int ubifs_node_calc_hash (struct ubifs_info*,struct ubifs_idx_node*,int *) ;
 int ubifs_prepare_node (struct ubifs_info*,struct ubifs_idx_node*,int,int ) ;
 int ubifs_zn_cow (struct ubifs_znode*) ;
 int ubifs_zn_dirty (struct ubifs_znode*) ;

__attribute__((used)) static int make_idx_node(struct ubifs_info *c, struct ubifs_idx_node *idx,
    struct ubifs_znode *znode, int lnum, int offs, int len)
{
 struct ubifs_znode *zp;
 u8 hash[UBIFS_HASH_ARR_SZ];
 int i, err;


 idx->ch.node_type = UBIFS_IDX_NODE;
 idx->child_cnt = cpu_to_le16(znode->child_cnt);
 idx->level = cpu_to_le16(znode->level);
 for (i = 0; i < znode->child_cnt; i++) {
  struct ubifs_branch *br = ubifs_idx_branch(c, idx, i);
  struct ubifs_zbranch *zbr = &znode->zbranch[i];

  key_write_idx(c, &zbr->key, &br->key);
  br->lnum = cpu_to_le32(zbr->lnum);
  br->offs = cpu_to_le32(zbr->offs);
  br->len = cpu_to_le32(zbr->len);
  ubifs_copy_hash(c, zbr->hash, ubifs_branch_hash(c, br));
  if (!zbr->lnum || !zbr->len) {
   ubifs_err(c, "bad ref in znode");
   ubifs_dump_znode(c, znode);
   if (zbr->znode)
    ubifs_dump_znode(c, zbr->znode);

   return -EINVAL;
  }
 }
 ubifs_prepare_node(c, idx, len, 0);
 ubifs_node_calc_hash(c, idx, hash);

 znode->lnum = lnum;
 znode->offs = offs;
 znode->len = len;

 err = insert_old_idx_znode(c, znode);


 zp = znode->parent;
 if (zp) {
  struct ubifs_zbranch *zbr;

  zbr = &zp->zbranch[znode->iip];
  zbr->lnum = lnum;
  zbr->offs = offs;
  zbr->len = len;
  ubifs_copy_hash(c, hash, zbr->hash);
 } else {
  c->zroot.lnum = lnum;
  c->zroot.offs = offs;
  c->zroot.len = len;
  ubifs_copy_hash(c, hash, c->zroot.hash);
 }
 c->calc_idx_sz += ALIGN(len, 8);

 atomic_long_dec(&c->dirty_zn_cnt);

 ubifs_assert(c, ubifs_zn_dirty(znode));
 ubifs_assert(c, ubifs_zn_cow(znode));





 __clear_bit(DIRTY_ZNODE, &znode->flags);
 __clear_bit(COW_ZNODE, &znode->flags);

 return err;
}
