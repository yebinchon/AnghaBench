
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int ns_segctor_sem; int ns_ndirtyblks; struct nilfs_sc_info* ns_writer; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_transaction_info {scalar_t__ ti_magic; int ti_flags; scalar_t__ ti_count; struct nilfs_transaction_info* ti_save; } ;
struct nilfs_sc_info {scalar_t__ sc_watermark; } ;
struct TYPE_2__ {struct nilfs_transaction_info* journal_info; } ;


 int BUG_ON (int) ;
 int NILFS_TI_COMMIT ;
 int NILFS_TI_DYNAMIC_ALLOC ;
 scalar_t__ NILFS_TI_MAGIC ;
 int NILFS_TI_SYNC ;
 int TRACE_NILFS2_TRANSACTION_COMMIT ;
 scalar_t__ atomic_read (int *) ;
 TYPE_1__* current ;
 int kmem_cache_free (int ,struct nilfs_transaction_info*) ;
 int nilfs_construct_segment (struct super_block*) ;
 int nilfs_segctor_do_flush (struct nilfs_sc_info*,int ) ;
 int nilfs_segctor_start_timer (struct nilfs_sc_info*) ;
 int nilfs_transaction_cachep ;
 int sb_end_intwrite (struct super_block*) ;
 int trace_nilfs2_transaction_transition (struct super_block*,struct nilfs_transaction_info*,scalar_t__,int,int ) ;
 int up_read (int *) ;

int nilfs_transaction_commit(struct super_block *sb)
{
 struct nilfs_transaction_info *ti = current->journal_info;
 struct the_nilfs *nilfs = sb->s_fs_info;
 int err = 0;

 BUG_ON(ti == ((void*)0) || ti->ti_magic != NILFS_TI_MAGIC);
 ti->ti_flags |= NILFS_TI_COMMIT;
 if (ti->ti_count > 0) {
  ti->ti_count--;
  trace_nilfs2_transaction_transition(sb, ti, ti->ti_count,
       ti->ti_flags, TRACE_NILFS2_TRANSACTION_COMMIT);
  return 0;
 }
 if (nilfs->ns_writer) {
  struct nilfs_sc_info *sci = nilfs->ns_writer;

  if (ti->ti_flags & NILFS_TI_COMMIT)
   nilfs_segctor_start_timer(sci);
  if (atomic_read(&nilfs->ns_ndirtyblks) > sci->sc_watermark)
   nilfs_segctor_do_flush(sci, 0);
 }
 up_read(&nilfs->ns_segctor_sem);
 trace_nilfs2_transaction_transition(sb, ti, ti->ti_count,
       ti->ti_flags, TRACE_NILFS2_TRANSACTION_COMMIT);

 current->journal_info = ti->ti_save;

 if (ti->ti_flags & NILFS_TI_SYNC)
  err = nilfs_construct_segment(sb);
 if (ti->ti_flags & NILFS_TI_DYNAMIC_ALLOC)
  kmem_cache_free(nilfs_transaction_cachep, ti);
 sb_end_intwrite(sb);
 return err;
}
