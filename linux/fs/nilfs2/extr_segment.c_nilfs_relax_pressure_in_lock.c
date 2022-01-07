
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int ns_segctor_sem; struct nilfs_sc_info* ns_writer; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_transaction_info {int ti_flags; } ;
struct nilfs_sc_info {int sc_flags; scalar_t__ sc_flush_request; } ;
struct TYPE_2__ {struct nilfs_transaction_info* journal_info; } ;


 int NILFS_SC_PRIOR_FLUSH ;
 int NILFS_TI_WRITER ;
 TYPE_1__* current ;
 int down_write (int *) ;
 int downgrade_write (int *) ;
 int nilfs_segctor_do_immediate_flush (struct nilfs_sc_info*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int up_read (int *) ;

void nilfs_relax_pressure_in_lock(struct super_block *sb)
{
 struct the_nilfs *nilfs = sb->s_fs_info;
 struct nilfs_sc_info *sci = nilfs->ns_writer;

 if (!sci || !sci->sc_flush_request)
  return;

 set_bit(NILFS_SC_PRIOR_FLUSH, &sci->sc_flags);
 up_read(&nilfs->ns_segctor_sem);

 down_write(&nilfs->ns_segctor_sem);
 if (sci->sc_flush_request &&
     test_bit(NILFS_SC_PRIOR_FLUSH, &sci->sc_flags)) {
  struct nilfs_transaction_info *ti = current->journal_info;

  ti->ti_flags |= NILFS_TI_WRITER;
  nilfs_segctor_do_immediate_flush(sci);
  ti->ti_flags &= ~NILFS_TI_WRITER;
 }
 downgrade_write(&nilfs->ns_segctor_sem);
}
