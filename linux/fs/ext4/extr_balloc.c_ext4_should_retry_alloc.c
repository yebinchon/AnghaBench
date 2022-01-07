
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int s_id; } ;
struct TYPE_3__ {scalar_t__ s_mb_free_pending; int s_journal; } ;


 TYPE_1__* EXT4_SB (struct super_block*) ;
 int ext4_has_free_clusters (TYPE_1__*,int,int ) ;
 int jbd2_journal_force_commit_nested (int ) ;
 int jbd_debug (int,char*,int ) ;
 int smp_mb () ;

int ext4_should_retry_alloc(struct super_block *sb, int *retries)
{
 if (!ext4_has_free_clusters(EXT4_SB(sb), 1, 0) ||
     (*retries)++ > 1 ||
     !EXT4_SB(sb)->s_journal)
  return 0;

 smp_mb();
 if (EXT4_SB(sb)->s_mb_free_pending == 0)
  return 0;

 jbd_debug(1, "%s: retrying operation after ENOSPC\n", sb->s_id);
 jbd2_journal_force_commit_nested(EXT4_SB(sb)->s_journal);
 return 1;
}
