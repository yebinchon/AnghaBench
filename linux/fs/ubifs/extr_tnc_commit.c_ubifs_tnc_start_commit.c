
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_zbranch {int dummy; } ;
struct TYPE_4__ {int idx_lebs; } ;
struct TYPE_3__ {scalar_t__ min_idx_lebs; scalar_t__ uncommitted_idx; int old_idx_sz; } ;
struct ubifs_info {int tnc_mutex; int calc_idx_sz; TYPE_2__ lst; int space_lock; TYPE_1__ bi; int zroot; int dirty_zn_cnt; } ;


 int ENOSPC ;
 int alloc_idx_lebs (struct ubifs_info*,int) ;
 scalar_t__ atomic_long_read (int *) ;
 int dbg_check_tnc (struct ubifs_info*,int) ;
 int dbg_cmt (char*,int ) ;
 int destroy_old_idx (struct ubifs_info*) ;
 int free_idx_lebs (struct ubifs_info*) ;
 int free_unused_idx_lebs (struct ubifs_info*) ;
 int get_znodes_to_commit (struct ubifs_info*) ;
 int layout_commit (struct ubifs_info*,int,int) ;
 int memcpy (struct ubifs_zbranch*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 scalar_t__ ubifs_calc_min_idx_lebs (struct ubifs_info*) ;
 int ubifs_save_dirty_idx_lnums (struct ubifs_info*) ;

int ubifs_tnc_start_commit(struct ubifs_info *c, struct ubifs_zbranch *zroot)
{
 int err = 0, cnt;

 mutex_lock(&c->tnc_mutex);
 err = dbg_check_tnc(c, 1);
 if (err)
  goto out;
 cnt = get_znodes_to_commit(c);
 if (cnt != 0) {
  int no_space = 0;

  err = alloc_idx_lebs(c, cnt);
  if (err == -ENOSPC)
   no_space = 1;
  else if (err)
   goto out_free;
  err = layout_commit(c, no_space, cnt);
  if (err)
   goto out_free;
  ubifs_assert(c, atomic_long_read(&c->dirty_zn_cnt) == 0);
  err = free_unused_idx_lebs(c);
  if (err)
   goto out;
 }
 destroy_old_idx(c);
 memcpy(zroot, &c->zroot, sizeof(struct ubifs_zbranch));

 err = ubifs_save_dirty_idx_lnums(c);
 if (err)
  goto out;

 spin_lock(&c->space_lock);
 ubifs_assert(c, c->bi.min_idx_lebs == ubifs_calc_min_idx_lebs(c));
 c->bi.old_idx_sz = c->calc_idx_sz;
 c->bi.uncommitted_idx = 0;
 c->bi.min_idx_lebs = ubifs_calc_min_idx_lebs(c);
 spin_unlock(&c->space_lock);
 mutex_unlock(&c->tnc_mutex);

 dbg_cmt("number of index LEBs %d", c->lst.idx_lebs);
 dbg_cmt("size of index %llu", c->calc_idx_sz);
 return err;

out_free:
 free_idx_lebs(c);
out:
 mutex_unlock(&c->tnc_mutex);
 return err;
}
