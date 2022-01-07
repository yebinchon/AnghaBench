
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct the_nilfs {int ns_sem; int ns_ndirtyblks; } ;
struct nilfs_super_block {int dummy; } ;
struct nilfs_sc_info {TYPE_1__* sc_super; int sc_flags; } ;
struct TYPE_3__ {struct the_nilfs* s_fs_info; } ;


 int EIO ;
 int NILFS_SB_COMMIT ;
 int NILFS_SC_SUPER_ROOT ;
 int SC_FLUSH_DAT ;
 int SC_LSEG_SR ;
 int atomic_set (int *,int ) ;
 int down_write (int *) ;
 scalar_t__ likely (int) ;
 int nilfs_commit_super (TYPE_1__*,int ) ;
 scalar_t__ nilfs_discontinued (struct the_nilfs*) ;
 struct nilfs_super_block** nilfs_prepare_super (TYPE_1__*,int ) ;
 int nilfs_sb_will_flip (struct the_nilfs*) ;
 int nilfs_segctor_accept (struct nilfs_sc_info*) ;
 int nilfs_segctor_confirm (struct nilfs_sc_info*) ;
 int nilfs_segctor_do_construct (struct nilfs_sc_info*,int) ;
 int nilfs_segctor_notify (struct nilfs_sc_info*,int,int) ;
 int nilfs_set_log_cursor (struct nilfs_super_block*,struct the_nilfs*) ;
 scalar_t__ test_bit (int ,int *) ;
 int up_write (int *) ;

__attribute__((used)) static int nilfs_segctor_construct(struct nilfs_sc_info *sci, int mode)
{
 struct the_nilfs *nilfs = sci->sc_super->s_fs_info;
 struct nilfs_super_block **sbp;
 int err = 0;

 nilfs_segctor_accept(sci);

 if (nilfs_discontinued(nilfs))
  mode = SC_LSEG_SR;
 if (!nilfs_segctor_confirm(sci))
  err = nilfs_segctor_do_construct(sci, mode);

 if (likely(!err)) {
  if (mode != SC_FLUSH_DAT)
   atomic_set(&nilfs->ns_ndirtyblks, 0);
  if (test_bit(NILFS_SC_SUPER_ROOT, &sci->sc_flags) &&
      nilfs_discontinued(nilfs)) {
   down_write(&nilfs->ns_sem);
   err = -EIO;
   sbp = nilfs_prepare_super(sci->sc_super,
        nilfs_sb_will_flip(nilfs));
   if (likely(sbp)) {
    nilfs_set_log_cursor(sbp[0], nilfs);
    err = nilfs_commit_super(sci->sc_super,
        NILFS_SB_COMMIT);
   }
   up_write(&nilfs->ns_sem);
  }
 }

 nilfs_segctor_notify(sci, mode, err);
 return err;
}
