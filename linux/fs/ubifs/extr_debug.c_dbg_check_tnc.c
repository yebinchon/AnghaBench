
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ubifs_znode {size_t iip; int child_cnt; scalar_t__ level; TYPE_2__* zbranch; TYPE_1__* parent; } ;
struct ubifs_zbranch {int znode; } ;
struct ubifs_info {int dirty_zn_cnt; int clean_zn_cnt; int replaying; struct ubifs_zbranch zroot; int tnc_mutex; } ;
struct TYPE_5__ {int key; } ;
struct TYPE_4__ {struct ubifs_zbranch* zbranch; } ;


 int EINVAL ;
 long atomic_long_read (int *) ;
 int dbg_check_key_order (struct ubifs_info*,TYPE_2__*,TYPE_2__*) ;
 int dbg_check_znode (struct ubifs_info*,struct ubifs_zbranch*) ;
 int dbg_is_chk_index (struct ubifs_info*) ;
 int keys_cmp (struct ubifs_info*,int *,int *) ;
 int mutex_is_locked (int *) ;
 int ubifs_assert (struct ubifs_info*,int ) ;
 int ubifs_dump_znode (struct ubifs_info*,struct ubifs_znode*) ;
 int ubifs_err (struct ubifs_info*,char*,long,long) ;
 int ubifs_msg (struct ubifs_info*,char*) ;
 struct ubifs_znode* ubifs_tnc_postorder_first (int ) ;
 struct ubifs_znode* ubifs_tnc_postorder_next (struct ubifs_info*,struct ubifs_znode*) ;
 scalar_t__ ubifs_zn_dirty (struct ubifs_znode*) ;

int dbg_check_tnc(struct ubifs_info *c, int extra)
{
 struct ubifs_znode *znode;
 long clean_cnt = 0, dirty_cnt = 0;
 int err, last;

 if (!dbg_is_chk_index(c))
  return 0;

 ubifs_assert(c, mutex_is_locked(&c->tnc_mutex));
 if (!c->zroot.znode)
  return 0;

 znode = ubifs_tnc_postorder_first(c->zroot.znode);
 while (1) {
  struct ubifs_znode *prev;
  struct ubifs_zbranch *zbr;

  if (!znode->parent)
   zbr = &c->zroot;
  else
   zbr = &znode->parent->zbranch[znode->iip];

  err = dbg_check_znode(c, zbr);
  if (err)
   return err;

  if (extra) {
   if (ubifs_zn_dirty(znode))
    dirty_cnt += 1;
   else
    clean_cnt += 1;
  }

  prev = znode;
  znode = ubifs_tnc_postorder_next(c, znode);
  if (!znode)
   break;





  last = prev->child_cnt - 1;
  if (prev->level == 0 && znode->level == 0 && !c->replaying &&
      !keys_cmp(c, &prev->zbranch[last].key,
         &znode->zbranch[0].key)) {
   err = dbg_check_key_order(c, &prev->zbranch[last],
        &znode->zbranch[0]);
   if (err < 0)
    return err;
   if (err) {
    ubifs_msg(c, "first znode");
    ubifs_dump_znode(c, prev);
    ubifs_msg(c, "second znode");
    ubifs_dump_znode(c, znode);
    return -EINVAL;
   }
  }
 }

 if (extra) {
  if (clean_cnt != atomic_long_read(&c->clean_zn_cnt)) {
   ubifs_err(c, "incorrect clean_zn_cnt %ld, calculated %ld",
      atomic_long_read(&c->clean_zn_cnt),
      clean_cnt);
   return -EINVAL;
  }
  if (dirty_cnt != atomic_long_read(&c->dirty_zn_cnt)) {
   ubifs_err(c, "incorrect dirty_zn_cnt %ld, calculated %ld",
      atomic_long_read(&c->dirty_zn_cnt),
      dirty_cnt);
   return -EINVAL;
  }
 }

 return 0;
}
