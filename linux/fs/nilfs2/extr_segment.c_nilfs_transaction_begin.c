
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int ns_segctor_sem; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_transaction_info {int ti_flags; struct nilfs_transaction_info* ti_save; int ti_count; } ;
struct TYPE_2__ {struct nilfs_transaction_info* journal_info; } ;


 int ENOSPC ;
 int NILFS_TI_DYNAMIC_ALLOC ;
 int TRACE_NILFS2_TRANSACTION_BEGIN ;
 TYPE_1__* current ;
 int down_read (int *) ;
 int kmem_cache_free (int ,struct nilfs_transaction_info*) ;
 scalar_t__ nilfs_near_disk_full (struct the_nilfs*) ;
 int nilfs_prepare_segment_lock (struct super_block*,struct nilfs_transaction_info*) ;
 int nilfs_transaction_cachep ;
 int sb_end_intwrite (struct super_block*) ;
 int sb_start_intwrite (struct super_block*) ;
 int trace_nilfs2_transaction_transition (struct super_block*,struct nilfs_transaction_info*,int ,int,int ) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;

int nilfs_transaction_begin(struct super_block *sb,
       struct nilfs_transaction_info *ti,
       int vacancy_check)
{
 struct the_nilfs *nilfs;
 int ret = nilfs_prepare_segment_lock(sb, ti);
 struct nilfs_transaction_info *trace_ti;

 if (unlikely(ret < 0))
  return ret;
 if (ret > 0) {
  trace_ti = current->journal_info;

  trace_nilfs2_transaction_transition(sb, trace_ti,
        trace_ti->ti_count, trace_ti->ti_flags,
        TRACE_NILFS2_TRANSACTION_BEGIN);
  return 0;
 }

 sb_start_intwrite(sb);

 nilfs = sb->s_fs_info;
 down_read(&nilfs->ns_segctor_sem);
 if (vacancy_check && nilfs_near_disk_full(nilfs)) {
  up_read(&nilfs->ns_segctor_sem);
  ret = -ENOSPC;
  goto failed;
 }

 trace_ti = current->journal_info;
 trace_nilfs2_transaction_transition(sb, trace_ti, trace_ti->ti_count,
         trace_ti->ti_flags,
         TRACE_NILFS2_TRANSACTION_BEGIN);
 return 0;

 failed:
 ti = current->journal_info;
 current->journal_info = ti->ti_save;
 if (ti->ti_flags & NILFS_TI_DYNAMIC_ALLOC)
  kmem_cache_free(nilfs_transaction_cachep, ti);
 sb_end_intwrite(sb);
 return ret;
}
