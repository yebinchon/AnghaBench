
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct flush_cmd_control {scalar_t__ f2fs_issue_flush; int issue_list; int flush_wait_queue; int queued_flush; int issued_flush; } ;
struct f2fs_sb_info {TYPE_2__* sb; } ;
typedef int dev_t ;
struct TYPE_6__ {struct flush_cmd_control* fcc_info; } ;
struct TYPE_5__ {TYPE_1__* s_bdev; } ;
struct TYPE_4__ {int bd_dev; } ;


 int ENOMEM ;
 int FLUSH_MERGE ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int PTR_ERR (scalar_t__) ;
 TYPE_3__* SM_I (struct f2fs_sb_info*) ;
 int atomic_set (int *,int ) ;
 struct flush_cmd_control* f2fs_kzalloc (struct f2fs_sb_info*,int,int ) ;
 int init_llist_head (int *) ;
 int init_waitqueue_head (int *) ;
 int issue_flush_thread ;
 scalar_t__ kthread_run (int ,struct f2fs_sb_info*,char*,int ,int ) ;
 int kvfree (struct flush_cmd_control*) ;
 int test_opt (struct f2fs_sb_info*,int ) ;

int f2fs_create_flush_cmd_control(struct f2fs_sb_info *sbi)
{
 dev_t dev = sbi->sb->s_bdev->bd_dev;
 struct flush_cmd_control *fcc;
 int err = 0;

 if (SM_I(sbi)->fcc_info) {
  fcc = SM_I(sbi)->fcc_info;
  if (fcc->f2fs_issue_flush)
   return err;
  goto init_thread;
 }

 fcc = f2fs_kzalloc(sbi, sizeof(struct flush_cmd_control), GFP_KERNEL);
 if (!fcc)
  return -ENOMEM;
 atomic_set(&fcc->issued_flush, 0);
 atomic_set(&fcc->queued_flush, 0);
 init_waitqueue_head(&fcc->flush_wait_queue);
 init_llist_head(&fcc->issue_list);
 SM_I(sbi)->fcc_info = fcc;
 if (!test_opt(sbi, FLUSH_MERGE))
  return err;

init_thread:
 fcc->f2fs_issue_flush = kthread_run(issue_flush_thread, sbi,
    "f2fs_flush-%u:%u", MAJOR(dev), MINOR(dev));
 if (IS_ERR(fcc->f2fs_issue_flush)) {
  err = PTR_ERR(fcc->f2fs_issue_flush);
  kvfree(fcc);
  SM_I(sbi)->fcc_info = ((void*)0);
  return err;
 }

 return err;
}
