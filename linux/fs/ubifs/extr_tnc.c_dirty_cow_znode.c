
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_znode {int flags; } ;
struct ubifs_zbranch {scalar_t__ len; scalar_t__ offs; scalar_t__ lnum; struct ubifs_znode* znode; } ;
struct ubifs_info {int clean_zn_cnt; int dirty_zn_cnt; } ;


 int DIRTY_ZNODE ;
 struct ubifs_znode* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct ubifs_znode*) ;
 int add_idx_dirt (struct ubifs_info*,scalar_t__,scalar_t__) ;
 int atomic_long_dec (int *) ;
 int atomic_long_inc (int *) ;
 struct ubifs_znode* copy_znode (struct ubifs_info*,struct ubifs_znode*) ;
 int insert_old_idx (struct ubifs_info*,scalar_t__,scalar_t__) ;
 int test_and_set_bit (int ,int *) ;
 int ubifs_clean_zn_cnt ;
 int ubifs_zn_cow (struct ubifs_znode*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct ubifs_znode *dirty_cow_znode(struct ubifs_info *c,
        struct ubifs_zbranch *zbr)
{
 struct ubifs_znode *znode = zbr->znode;
 struct ubifs_znode *zn;
 int err;

 if (!ubifs_zn_cow(znode)) {

  if (!test_and_set_bit(DIRTY_ZNODE, &znode->flags)) {
   atomic_long_inc(&c->dirty_zn_cnt);
   atomic_long_dec(&c->clean_zn_cnt);
   atomic_long_dec(&ubifs_clean_zn_cnt);
   err = add_idx_dirt(c, zbr->lnum, zbr->len);
   if (unlikely(err))
    return ERR_PTR(err);
  }
  return znode;
 }

 zn = copy_znode(c, znode);
 if (IS_ERR(zn))
  return zn;

 if (zbr->len) {
  err = insert_old_idx(c, zbr->lnum, zbr->offs);
  if (unlikely(err))
   return ERR_PTR(err);
  err = add_idx_dirt(c, zbr->lnum, zbr->len);
 } else
  err = 0;

 zbr->znode = zn;
 zbr->lnum = 0;
 zbr->offs = 0;
 zbr->len = 0;

 if (unlikely(err))
  return ERR_PTR(err);
 return zn;
}
