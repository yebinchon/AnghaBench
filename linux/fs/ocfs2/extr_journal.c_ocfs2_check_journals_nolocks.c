
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_super {unsigned int max_slots; int * slot_recovery_generations; } ;
struct TYPE_3__ {int ij_flags; } ;
struct TYPE_4__ {TYPE_1__ journal1; } ;
struct ocfs2_dinode {TYPE_2__ id1; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int EROFS ;
 int OCFS2_JOURNAL_DIRTY_FL ;
 int brelse (struct buffer_head*) ;
 int le32_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_get_recovery_generation (struct ocfs2_dinode*) ;
 int ocfs2_read_journal_inode (struct ocfs2_super*,unsigned int,struct buffer_head**,int *) ;

int ocfs2_check_journals_nolocks(struct ocfs2_super *osb)
{
 int ret = 0;
 unsigned int slot;
 struct buffer_head *di_bh = ((void*)0);
 struct ocfs2_dinode *di;
 int journal_dirty = 0;

 for(slot = 0; slot < osb->max_slots; slot++) {
  ret = ocfs2_read_journal_inode(osb, slot, &di_bh, ((void*)0));
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  di = (struct ocfs2_dinode *) di_bh->b_data;

  osb->slot_recovery_generations[slot] =
     ocfs2_get_recovery_generation(di);

  if (le32_to_cpu(di->id1.journal1.ij_flags) &
      OCFS2_JOURNAL_DIRTY_FL)
   journal_dirty = 1;

  brelse(di_bh);
  di_bh = ((void*)0);
 }

out:
 if (journal_dirty)
  ret = -EROFS;
 return ret;
}
