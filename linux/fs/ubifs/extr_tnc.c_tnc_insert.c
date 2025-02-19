
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {int child_cnt; scalar_t__ level; scalar_t__ iip; struct ubifs_znode* parent; TYPE_2__* zbranch; int flags; scalar_t__ alt; } ;
struct ubifs_zbranch {scalar_t__ len; scalar_t__ offs; scalar_t__ lnum; struct ubifs_znode* znode; union ubifs_key key; } ;
struct TYPE_3__ {struct ubifs_znode* znode; scalar_t__ len; scalar_t__ offs; scalar_t__ lnum; } ;
struct ubifs_info {int fanout; TYPE_1__ zroot; int dirty_zn_cnt; int max_znode_sz; } ;
struct TYPE_4__ {struct ubifs_znode* znode; union ubifs_key key; scalar_t__ len; scalar_t__ offs; scalar_t__ lnum; } ;


 int DIRTY_ZNODE ;
 int ENOMEM ;
 int GFP_NOFS ;
 scalar_t__ UBIFS_DATA_KEY ;
 int __set_bit (int ,int *) ;
 int atomic_long_inc (int *) ;
 int correct_parent_keys (struct ubifs_info*,struct ubifs_znode*) ;
 int dbg_tnc (char*,int,...) ;
 int dbg_tnck (union ubifs_key*,char*,int,...) ;
 int ins_clr_old_idx_znode (struct ubifs_info*,struct ubifs_znode*) ;
 int insert_zbranch (struct ubifs_info*,struct ubifs_znode*,struct ubifs_zbranch*,int) ;
 scalar_t__ key_inum (struct ubifs_info*,union ubifs_key*) ;
 scalar_t__ key_type (struct ubifs_info*,union ubifs_key*) ;
 struct ubifs_znode* kzalloc (int ,int ) ;
 int ubifs_assert (struct ubifs_info*,int) ;

__attribute__((used)) static int tnc_insert(struct ubifs_info *c, struct ubifs_znode *znode,
        struct ubifs_zbranch *zbr, int n)
{
 struct ubifs_znode *zn, *zi, *zp;
 int i, keep, move, appending = 0;
 union ubifs_key *key = &zbr->key, *key1;

 ubifs_assert(c, n >= 0 && n <= c->fanout);


again:
 zp = znode->parent;
 if (znode->child_cnt < c->fanout) {
  ubifs_assert(c, n != c->fanout);
  dbg_tnck(key, "inserted at %d level %d, key ", n, znode->level);

  insert_zbranch(c, znode, zbr, n);


  if (n == 0 && zp && znode->iip == 0)
   correct_parent_keys(c, znode);

  return 0;
 }





 dbg_tnck(key, "splitting level %d, key ", znode->level);

 if (znode->alt)




  ins_clr_old_idx_znode(c, znode);

 zn = kzalloc(c->max_znode_sz, GFP_NOFS);
 if (!zn)
  return -ENOMEM;
 zn->parent = zp;
 zn->level = znode->level;


 if (znode->level == 0 && key_type(c, key) == UBIFS_DATA_KEY) {

  if (n == c->fanout) {
   key1 = &znode->zbranch[n - 1].key;
   if (key_inum(c, key1) == key_inum(c, key) &&
       key_type(c, key1) == UBIFS_DATA_KEY)
    appending = 1;
  } else
   goto check_split;
 } else if (appending && n != c->fanout) {

  appending = 0;
check_split:
  if (n >= (c->fanout + 1) / 2) {
   key1 = &znode->zbranch[0].key;
   if (key_inum(c, key1) == key_inum(c, key) &&
       key_type(c, key1) == UBIFS_DATA_KEY) {
    key1 = &znode->zbranch[n].key;
    if (key_inum(c, key1) != key_inum(c, key) ||
        key_type(c, key1) != UBIFS_DATA_KEY) {
     keep = n;
     move = c->fanout - keep;
     zi = znode;
     goto do_split;
    }
   }
  }
 }

 if (appending) {
  keep = c->fanout;
  move = 0;
 } else {
  keep = (c->fanout + 1) / 2;
  move = c->fanout - keep;
 }






 if (n < keep) {

  zi = znode;
  move += 1;
  keep -= 1;
 } else {

  zi = zn;
  n -= keep;

  if (zn->level != 0)
   zbr->znode->parent = zn;
 }

do_split:

 __set_bit(DIRTY_ZNODE, &zn->flags);
 atomic_long_inc(&c->dirty_zn_cnt);

 zn->child_cnt = move;
 znode->child_cnt = keep;

 dbg_tnc("moving %d, keeping %d", move, keep);


 for (i = 0; i < move; i++) {
  zn->zbranch[i] = znode->zbranch[keep + i];

  if (zn->level != 0)
   if (zn->zbranch[i].znode) {
    zn->zbranch[i].znode->parent = zn;
    zn->zbranch[i].znode->iip = i;
   }
 }


 dbg_tnck(key, "inserting at %d level %d, key ", n, zn->level);

 insert_zbranch(c, zi, zbr, n);


 if (zp) {
  if (n == 0 && zi == znode && znode->iip == 0)
   correct_parent_keys(c, znode);


  n = znode->iip + 1;


  zbr->key = zn->zbranch[0].key;
  zbr->znode = zn;
  zbr->lnum = 0;
  zbr->offs = 0;
  zbr->len = 0;
  znode = zp;

  goto again;
 }


 dbg_tnc("creating new zroot at level %d", znode->level + 1);

 zi = kzalloc(c->max_znode_sz, GFP_NOFS);
 if (!zi)
  return -ENOMEM;

 zi->child_cnt = 2;
 zi->level = znode->level + 1;

 __set_bit(DIRTY_ZNODE, &zi->flags);
 atomic_long_inc(&c->dirty_zn_cnt);

 zi->zbranch[0].key = znode->zbranch[0].key;
 zi->zbranch[0].znode = znode;
 zi->zbranch[0].lnum = c->zroot.lnum;
 zi->zbranch[0].offs = c->zroot.offs;
 zi->zbranch[0].len = c->zroot.len;
 zi->zbranch[1].key = zn->zbranch[0].key;
 zi->zbranch[1].znode = zn;

 c->zroot.lnum = 0;
 c->zroot.offs = 0;
 c->zroot.len = 0;
 c->zroot.znode = zi;

 zn->parent = zi;
 zn->iip = 1;
 znode->parent = zi;
 znode->iip = 0;

 return 0;
}
