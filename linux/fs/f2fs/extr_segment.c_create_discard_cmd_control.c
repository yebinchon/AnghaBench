
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct f2fs_sb_info {int log_blocks_per_seg; TYPE_2__* sb; } ;
struct discard_cmd_control {int max_discards; int rbtree_check; int f2fs_issue_discard; int discard_wait_queue; int root; scalar_t__ next_pos; scalar_t__ undiscard_blks; scalar_t__ nr_discards; int discard_cmd_cnt; int queued_discard; int issued_discard; int cmd_lock; int fstrim_list; int wait_list; int * pend_list; int entry_list; int discard_granularity; } ;
typedef int dev_t ;
struct TYPE_6__ {struct discard_cmd_control* dcc_info; } ;
struct TYPE_5__ {TYPE_1__* s_bdev; } ;
struct TYPE_4__ {int bd_dev; } ;


 int DEFAULT_DISCARD_GRANULARITY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int MAIN_SEGS (struct f2fs_sb_info*) ;
 int MAJOR (int ) ;
 int MAX_PLIST_NUM ;
 int MINOR (int ) ;
 int PTR_ERR (int ) ;
 int RB_ROOT_CACHED ;
 TYPE_3__* SM_I (struct f2fs_sb_info*) ;
 int atomic_set (int *,int ) ;
 struct discard_cmd_control* f2fs_kzalloc (struct f2fs_sb_info*,int,int ) ;
 int init_waitqueue_head (int *) ;
 int issue_discard_thread ;
 int kthread_run (int ,struct f2fs_sb_info*,char*,int ,int ) ;
 int kvfree (struct discard_cmd_control*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int create_discard_cmd_control(struct f2fs_sb_info *sbi)
{
 dev_t dev = sbi->sb->s_bdev->bd_dev;
 struct discard_cmd_control *dcc;
 int err = 0, i;

 if (SM_I(sbi)->dcc_info) {
  dcc = SM_I(sbi)->dcc_info;
  goto init_thread;
 }

 dcc = f2fs_kzalloc(sbi, sizeof(struct discard_cmd_control), GFP_KERNEL);
 if (!dcc)
  return -ENOMEM;

 dcc->discard_granularity = DEFAULT_DISCARD_GRANULARITY;
 INIT_LIST_HEAD(&dcc->entry_list);
 for (i = 0; i < MAX_PLIST_NUM; i++)
  INIT_LIST_HEAD(&dcc->pend_list[i]);
 INIT_LIST_HEAD(&dcc->wait_list);
 INIT_LIST_HEAD(&dcc->fstrim_list);
 mutex_init(&dcc->cmd_lock);
 atomic_set(&dcc->issued_discard, 0);
 atomic_set(&dcc->queued_discard, 0);
 atomic_set(&dcc->discard_cmd_cnt, 0);
 dcc->nr_discards = 0;
 dcc->max_discards = MAIN_SEGS(sbi) << sbi->log_blocks_per_seg;
 dcc->undiscard_blks = 0;
 dcc->next_pos = 0;
 dcc->root = RB_ROOT_CACHED;
 dcc->rbtree_check = 0;

 init_waitqueue_head(&dcc->discard_wait_queue);
 SM_I(sbi)->dcc_info = dcc;
init_thread:
 dcc->f2fs_issue_discard = kthread_run(issue_discard_thread, sbi,
    "f2fs_discard-%u:%u", MAJOR(dev), MINOR(dev));
 if (IS_ERR(dcc->f2fs_issue_discard)) {
  err = PTR_ERR(dcc->f2fs_issue_discard);
  kvfree(dcc);
  SM_I(sbi)->dcc_info = ((void*)0);
  return err;
 }

 return err;
}
