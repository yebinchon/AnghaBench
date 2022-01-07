
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct discard_cmd_control {int undiscard_blks; int discard_cmd_cnt; struct list_head* pend_list; } ;
struct discard_cmd {scalar_t__ bio_ref; int lock; int list; int wait; scalar_t__ error; scalar_t__ queued; int state; scalar_t__ ref; void* len; void* start; void* lstart; struct block_device* bdev; } ;
struct block_device {int dummy; } ;
typedef void* block_t ;
struct TYPE_2__ {struct discard_cmd_control* dcc_info; } ;


 int D_PREP ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_1__* SM_I (struct f2fs_sb_info*) ;
 int atomic_inc (int *) ;
 int discard_cmd_slab ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 struct discard_cmd* f2fs_kmem_cache_alloc (int ,int ) ;
 int init_completion (int *) ;
 int list_add_tail (int *,struct list_head*) ;
 size_t plist_idx (void*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct discard_cmd *__create_discard_cmd(struct f2fs_sb_info *sbi,
  struct block_device *bdev, block_t lstart,
  block_t start, block_t len)
{
 struct discard_cmd_control *dcc = SM_I(sbi)->dcc_info;
 struct list_head *pend_list;
 struct discard_cmd *dc;

 f2fs_bug_on(sbi, !len);

 pend_list = &dcc->pend_list[plist_idx(len)];

 dc = f2fs_kmem_cache_alloc(discard_cmd_slab, GFP_NOFS);
 INIT_LIST_HEAD(&dc->list);
 dc->bdev = bdev;
 dc->lstart = lstart;
 dc->start = start;
 dc->len = len;
 dc->ref = 0;
 dc->state = D_PREP;
 dc->queued = 0;
 dc->error = 0;
 init_completion(&dc->wait);
 list_add_tail(&dc->list, pend_list);
 spin_lock_init(&dc->lock);
 dc->bio_ref = 0;
 atomic_inc(&dcc->discard_cmd_cnt);
 dcc->undiscard_blks += len;

 return dc;
}
