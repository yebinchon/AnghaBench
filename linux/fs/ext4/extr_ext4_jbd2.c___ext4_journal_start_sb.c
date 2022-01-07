
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
typedef int journal_t ;
typedef int handle_t ;
struct TYPE_2__ {int * s_journal; } ;


 int * ERR_PTR (int) ;
 TYPE_1__* EXT4_SB (struct super_block*) ;
 int GFP_NOFS ;
 int _RET_IP_ ;
 int * ext4_get_nojournal () ;
 int ext4_journal_check_start (struct super_block*) ;
 int * jbd2__journal_start (int *,int,int,int ,int,unsigned int) ;
 int trace_ext4_journal_start (struct super_block*,int,int,int ) ;

handle_t *__ext4_journal_start_sb(struct super_block *sb, unsigned int line,
      int type, int blocks, int rsv_blocks)
{
 journal_t *journal;
 int err;

 trace_ext4_journal_start(sb, blocks, rsv_blocks, _RET_IP_);
 err = ext4_journal_check_start(sb);
 if (err < 0)
  return ERR_PTR(err);

 journal = EXT4_SB(sb)->s_journal;
 if (!journal)
  return ext4_get_nojournal();
 return jbd2__journal_start(journal, blocks, rsv_blocks, GFP_NOFS,
       type, line);
}
