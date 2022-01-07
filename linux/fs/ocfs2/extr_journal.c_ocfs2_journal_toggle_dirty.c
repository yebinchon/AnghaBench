
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_super {int sb; struct ocfs2_journal* journal; } ;
struct ocfs2_journal {int j_inode; struct buffer_head* j_bh; } ;
struct TYPE_3__ {int ij_flags; } ;
struct TYPE_4__ {TYPE_1__ journal1; } ;
struct ocfs2_dinode {int i_check; TYPE_2__ id1; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int BUG_ON (int) ;
 int INODE_CACHE (int ) ;
 int OCFS2_IS_VALID_DINODE (struct ocfs2_dinode*) ;
 unsigned int OCFS2_JOURNAL_DIRTY_FL ;
 int cpu_to_le32 (unsigned int) ;
 unsigned int le32_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_bump_recovery_generation (struct ocfs2_dinode*) ;
 int ocfs2_compute_meta_ecc (int ,scalar_t__,int *) ;
 int ocfs2_write_block (struct ocfs2_super*,struct buffer_head*,int ) ;

__attribute__((used)) static int ocfs2_journal_toggle_dirty(struct ocfs2_super *osb,
          int dirty, int replayed)
{
 int status;
 unsigned int flags;
 struct ocfs2_journal *journal = osb->journal;
 struct buffer_head *bh = journal->j_bh;
 struct ocfs2_dinode *fe;

 fe = (struct ocfs2_dinode *)bh->b_data;




 BUG_ON(!OCFS2_IS_VALID_DINODE(fe));

 flags = le32_to_cpu(fe->id1.journal1.ij_flags);
 if (dirty)
  flags |= OCFS2_JOURNAL_DIRTY_FL;
 else
  flags &= ~OCFS2_JOURNAL_DIRTY_FL;
 fe->id1.journal1.ij_flags = cpu_to_le32(flags);

 if (replayed)
  ocfs2_bump_recovery_generation(fe);

 ocfs2_compute_meta_ecc(osb->sb, bh->b_data, &fe->i_check);
 status = ocfs2_write_block(osb, bh, INODE_CACHE(journal->j_inode));
 if (status < 0)
  mlog_errno(status);

 return status;
}
