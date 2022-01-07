
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct nilfs_transaction_info {scalar_t__ ti_magic; int ti_count; void* ti_save; scalar_t__ ti_flags; } ;
struct TYPE_2__ {struct nilfs_transaction_info* journal_info; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int KERN_WARNING ;
 scalar_t__ NILFS_TI_DYNAMIC_ALLOC ;
 scalar_t__ NILFS_TI_MAGIC ;
 TYPE_1__* current ;
 struct nilfs_transaction_info* kmem_cache_alloc (int ,int ) ;
 int nilfs_msg (struct super_block*,int ,char*) ;
 int nilfs_transaction_cachep ;

__attribute__((used)) static int nilfs_prepare_segment_lock(struct super_block *sb,
          struct nilfs_transaction_info *ti)
{
 struct nilfs_transaction_info *cur_ti = current->journal_info;
 void *save = ((void*)0);

 if (cur_ti) {
  if (cur_ti->ti_magic == NILFS_TI_MAGIC)
   return ++cur_ti->ti_count;






  nilfs_msg(sb, KERN_WARNING, "journal info from a different FS");
  save = current->journal_info;
 }
 if (!ti) {
  ti = kmem_cache_alloc(nilfs_transaction_cachep, GFP_NOFS);
  if (!ti)
   return -ENOMEM;
  ti->ti_flags = NILFS_TI_DYNAMIC_ALLOC;
 } else {
  ti->ti_flags = 0;
 }
 ti->ti_count = 0;
 ti->ti_save = save;
 ti->ti_magic = NILFS_TI_MAGIC;
 current->journal_info = ti;
 return 0;
}
