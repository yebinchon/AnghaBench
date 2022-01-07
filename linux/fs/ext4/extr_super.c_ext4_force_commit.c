
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
typedef int journal_t ;
struct TYPE_2__ {int * s_journal; } ;


 TYPE_1__* EXT4_SB (struct super_block*) ;
 int ext4_journal_force_commit (int *) ;
 scalar_t__ sb_rdonly (struct super_block*) ;

int ext4_force_commit(struct super_block *sb)
{
 journal_t *journal;

 if (sb_rdonly(sb))
  return 0;

 journal = EXT4_SB(sb)->s_journal;
 return ext4_journal_force_commit(journal);
}
