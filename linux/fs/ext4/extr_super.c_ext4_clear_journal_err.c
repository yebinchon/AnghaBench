
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext4_super_block {int s_state; } ;
typedef int journal_t ;
struct TYPE_2__ {int s_mount_state; int * s_journal; } ;


 int BUG_ON (int) ;
 int EXT4_ERROR_FS ;
 TYPE_1__* EXT4_SB (struct super_block*) ;
 int cpu_to_le16 (int ) ;
 int ext4_commit_super (struct super_block*,int) ;
 char* ext4_decode_error (struct super_block*,int,char*) ;
 int ext4_has_feature_journal (struct super_block*) ;
 int ext4_warning (struct super_block*,char*,...) ;
 int jbd2_journal_clear_err (int *) ;
 int jbd2_journal_errno (int *) ;
 int jbd2_journal_update_sb_errno (int *) ;

__attribute__((used)) static void ext4_clear_journal_err(struct super_block *sb,
       struct ext4_super_block *es)
{
 journal_t *journal;
 int j_errno;
 const char *errstr;

 BUG_ON(!ext4_has_feature_journal(sb));

 journal = EXT4_SB(sb)->s_journal;






 j_errno = jbd2_journal_errno(journal);
 if (j_errno) {
  char nbuf[16];

  errstr = ext4_decode_error(sb, j_errno, nbuf);
  ext4_warning(sb, "Filesystem error recorded "
        "from previous mount: %s", errstr);
  ext4_warning(sb, "Marking fs in need of filesystem check.");

  EXT4_SB(sb)->s_mount_state |= EXT4_ERROR_FS;
  es->s_state |= cpu_to_le16(EXT4_ERROR_FS);
  ext4_commit_super(sb, 1);

  jbd2_journal_clear_err(journal);
  jbd2_journal_update_sb_errno(journal);
 }
}
