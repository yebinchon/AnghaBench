
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int s_id; int s_flags; } ;
struct TYPE_4__ {int j_flags; } ;
typedef TYPE_1__ journal_t ;
struct TYPE_5__ {TYPE_1__* s_journal; int s_mount_flags; } ;


 int EIO ;
 int ERRORS_CONT ;
 int ERRORS_PANIC ;
 int ERRORS_RO ;
 int EXT4_MF_FS_ABORTED ;
 TYPE_3__* EXT4_SB (struct super_block*) ;
 int JBD2_REC_ERR ;
 int KERN_CRIT ;
 int SB_RDONLY ;
 int WARN_ON_ERROR ;
 int WARN_ON_ONCE (int) ;
 int ext4_msg (struct super_block*,int ,char*) ;
 int jbd2_journal_abort (TYPE_1__*,int ) ;
 int panic (char*,int ) ;
 scalar_t__ sb_rdonly (struct super_block*) ;
 int smp_wmb () ;
 scalar_t__ system_going_down () ;
 scalar_t__ test_opt (struct super_block*,int ) ;

__attribute__((used)) static void ext4_handle_error(struct super_block *sb)
{
 if (test_opt(sb, WARN_ON_ERROR))
  WARN_ON_ONCE(1);

 if (sb_rdonly(sb))
  return;

 if (!test_opt(sb, ERRORS_CONT)) {
  journal_t *journal = EXT4_SB(sb)->s_journal;

  EXT4_SB(sb)->s_mount_flags |= EXT4_MF_FS_ABORTED;
  if (journal)
   jbd2_journal_abort(journal, -EIO);
 }





 if (test_opt(sb, ERRORS_RO) || system_going_down()) {
  ext4_msg(sb, KERN_CRIT, "Remounting filesystem read-only");




  smp_wmb();
  sb->s_flags |= SB_RDONLY;
 } else if (test_opt(sb, ERRORS_PANIC)) {
  if (EXT4_SB(sb)->s_journal &&
    !(EXT4_SB(sb)->s_journal->j_flags & JBD2_REC_ERR))
   return;
  panic("EXT4-fs (device %s): panic forced after error\n",
   sb->s_id);
 }
}
