
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ubi_num; } ;
struct ubifs_info {int no_chk_data_crc; int di; TYPE_1__ vi; int ltail_lnum; int lhead_lnum; int highest_inum; int assert_action; int orph_new; int orph_list; int old_buds; int unclean_leb_list; int frdi_idx_list; int freeable_list; int empty_list; int uncat_list; int replay_buds; int replay_list; int idx_gc; int infos_list; void* orph_tree; void* size_tree; void* old_idx; void* buds; int cmt_wq; int write_reserve_mutex; int bu_mutex; int umount_mutex; int log_mutex; int tnc_mutex; int lp_mutex; int commit_sem; int orphan_lock; int space_lock; int buds_lock; int cs_lock; int cnt_lock; } ;
struct ubi_volume_desc {int dummy; } ;


 int ASSACT_RO ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 void* RB_ROOT ;
 int UBIFS_FIRST_INO ;
 int UBIFS_LOG_LNUM ;
 int init_rwsem (int *) ;
 int init_waitqueue_head (int *) ;
 struct ubifs_info* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int ubi_get_device_info (int ,int *) ;
 int ubi_get_volume_info (struct ubi_volume_desc*,TYPE_1__*) ;

__attribute__((used)) static struct ubifs_info *alloc_ubifs_info(struct ubi_volume_desc *ubi)
{
 struct ubifs_info *c;

 c = kzalloc(sizeof(struct ubifs_info), GFP_KERNEL);
 if (c) {
  spin_lock_init(&c->cnt_lock);
  spin_lock_init(&c->cs_lock);
  spin_lock_init(&c->buds_lock);
  spin_lock_init(&c->space_lock);
  spin_lock_init(&c->orphan_lock);
  init_rwsem(&c->commit_sem);
  mutex_init(&c->lp_mutex);
  mutex_init(&c->tnc_mutex);
  mutex_init(&c->log_mutex);
  mutex_init(&c->umount_mutex);
  mutex_init(&c->bu_mutex);
  mutex_init(&c->write_reserve_mutex);
  init_waitqueue_head(&c->cmt_wq);
  c->buds = RB_ROOT;
  c->old_idx = RB_ROOT;
  c->size_tree = RB_ROOT;
  c->orph_tree = RB_ROOT;
  INIT_LIST_HEAD(&c->infos_list);
  INIT_LIST_HEAD(&c->idx_gc);
  INIT_LIST_HEAD(&c->replay_list);
  INIT_LIST_HEAD(&c->replay_buds);
  INIT_LIST_HEAD(&c->uncat_list);
  INIT_LIST_HEAD(&c->empty_list);
  INIT_LIST_HEAD(&c->freeable_list);
  INIT_LIST_HEAD(&c->frdi_idx_list);
  INIT_LIST_HEAD(&c->unclean_leb_list);
  INIT_LIST_HEAD(&c->old_buds);
  INIT_LIST_HEAD(&c->orph_list);
  INIT_LIST_HEAD(&c->orph_new);
  c->no_chk_data_crc = 1;
  c->assert_action = ASSACT_RO;

  c->highest_inum = UBIFS_FIRST_INO;
  c->lhead_lnum = c->ltail_lnum = UBIFS_LOG_LNUM;

  ubi_get_volume_info(ubi, &c->vi);
  ubi_get_device_info(c->vi.ubi_num, &c->di);
 }
 return c;
}
