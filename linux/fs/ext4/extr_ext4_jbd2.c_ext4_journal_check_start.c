
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ frozen; } ;
struct super_block {TYPE_1__ s_writers; } ;
typedef int journal_t ;
struct TYPE_5__ {int * s_journal; } ;


 int EIO ;
 int EROFS ;
 TYPE_2__* EXT4_SB (struct super_block*) ;
 scalar_t__ SB_FREEZE_COMPLETE ;
 int WARN_ON (int) ;
 int ext4_abort (struct super_block*,char*) ;
 int ext4_forced_shutdown (TYPE_2__*) ;
 scalar_t__ is_journal_aborted (int *) ;
 int might_sleep () ;
 scalar_t__ sb_rdonly (struct super_block*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int ext4_journal_check_start(struct super_block *sb)
{
 journal_t *journal;

 might_sleep();

 if (unlikely(ext4_forced_shutdown(EXT4_SB(sb))))
  return -EIO;

 if (sb_rdonly(sb))
  return -EROFS;
 WARN_ON(sb->s_writers.frozen == SB_FREEZE_COMPLETE);
 journal = EXT4_SB(sb)->s_journal;





 if (journal && is_journal_aborted(journal)) {
  ext4_abort(sb, "Detected aborted journal");
  return -EROFS;
 }
 return 0;
}
