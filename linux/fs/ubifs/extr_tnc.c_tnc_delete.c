
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_znode {scalar_t__ level; int child_cnt; int iip; int flags; scalar_t__ cnext; struct ubifs_znode* parent; struct ubifs_zbranch* zbranch; } ;
struct ubifs_zbranch {int len; int offs; int lnum; TYPE_1__* znode; int key; } ;
struct TYPE_4__ {struct ubifs_znode* znode; int len; int offs; int lnum; } ;
struct ubifs_info {int fanout; int clean_zn_cnt; int dirty_zn_cnt; TYPE_2__ zroot; } ;
struct TYPE_3__ {int iip; } ;


 scalar_t__ IS_ERR (struct ubifs_znode*) ;
 int OBSOLETE_ZNODE ;
 int PTR_ERR (struct ubifs_znode*) ;
 int __set_bit (int ,int *) ;
 int atomic_long_dec (int *) ;
 int atomic_long_inc (int *) ;
 int dbg_tnck (int *,char*) ;
 struct ubifs_znode* dirty_cow_znode (struct ubifs_info*,struct ubifs_zbranch*) ;
 struct ubifs_znode* get_znode (struct ubifs_info*,struct ubifs_znode*,int ) ;
 int insert_old_idx (struct ubifs_info*,int ,int ) ;
 int insert_old_idx_znode (struct ubifs_info*,struct ubifs_znode*) ;
 int kfree (struct ubifs_znode*) ;
 int lnc_free (struct ubifs_zbranch*) ;
 int ubifs_add_dirt (struct ubifs_info*,int ,int ) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_clean_zn_cnt ;
 int ubifs_dump_znode (struct ubifs_info*,struct ubifs_znode*) ;
 int ubifs_zn_dirty (struct ubifs_znode*) ;
 int ubifs_zn_obsolete (struct ubifs_znode*) ;

__attribute__((used)) static int tnc_delete(struct ubifs_info *c, struct ubifs_znode *znode, int n)
{
 struct ubifs_zbranch *zbr;
 struct ubifs_znode *zp;
 int i, err;


 ubifs_assert(c, znode->level == 0);
 ubifs_assert(c, n >= 0 && n < c->fanout);
 dbg_tnck(&znode->zbranch[n].key, "deleting key ");

 zbr = &znode->zbranch[n];
 lnc_free(zbr);

 err = ubifs_add_dirt(c, zbr->lnum, zbr->len);
 if (err) {
  ubifs_dump_znode(c, znode);
  return err;
 }


 for (i = n; i < znode->child_cnt - 1; i++)
  znode->zbranch[i] = znode->zbranch[i + 1];
 znode->child_cnt -= 1;

 if (znode->child_cnt > 0)
  return 0;






 do {
  ubifs_assert(c, !ubifs_zn_obsolete(znode));
  ubifs_assert(c, ubifs_zn_dirty(znode));

  zp = znode->parent;
  n = znode->iip;

  atomic_long_dec(&c->dirty_zn_cnt);

  err = insert_old_idx_znode(c, znode);
  if (err)
   return err;

  if (znode->cnext) {
   __set_bit(OBSOLETE_ZNODE, &znode->flags);
   atomic_long_inc(&c->clean_zn_cnt);
   atomic_long_inc(&ubifs_clean_zn_cnt);
  } else
   kfree(znode);
  znode = zp;
 } while (znode->child_cnt == 1);


 znode->child_cnt -= 1;
 ubifs_assert(c, znode->level != 0);
 for (i = n; i < znode->child_cnt; i++) {
  znode->zbranch[i] = znode->zbranch[i + 1];
  if (znode->zbranch[i].znode)
   znode->zbranch[i].znode->iip = i;
 }





 if (!znode->parent) {
  while (znode->child_cnt == 1 && znode->level != 0) {
   zp = znode;
   zbr = &znode->zbranch[0];
   znode = get_znode(c, znode, 0);
   if (IS_ERR(znode))
    return PTR_ERR(znode);
   znode = dirty_cow_znode(c, zbr);
   if (IS_ERR(znode))
    return PTR_ERR(znode);
   znode->parent = ((void*)0);
   znode->iip = 0;
   if (c->zroot.len) {
    err = insert_old_idx(c, c->zroot.lnum,
           c->zroot.offs);
    if (err)
     return err;
   }
   c->zroot.lnum = zbr->lnum;
   c->zroot.offs = zbr->offs;
   c->zroot.len = zbr->len;
   c->zroot.znode = znode;
   ubifs_assert(c, !ubifs_zn_obsolete(zp));
   ubifs_assert(c, ubifs_zn_dirty(zp));
   atomic_long_dec(&c->dirty_zn_cnt);

   if (zp->cnext) {
    __set_bit(OBSOLETE_ZNODE, &zp->flags);
    atomic_long_inc(&c->clean_zn_cnt);
    atomic_long_inc(&ubifs_clean_zn_cnt);
   } else
    kfree(zp);
  }
 }

 return 0;
}
