
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {TYPE_1__* journal; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {int j_checkpointed; } ;


 int INODE_CACHE (struct inode*) ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int ocfs2_ci_fully_checkpointed (int ) ;
 scalar_t__ ocfs2_mount_local (struct ocfs2_super*) ;
 int ocfs2_start_checkpoint (struct ocfs2_super*) ;
 int wait_event (int ,int ) ;

__attribute__((used)) static inline void ocfs2_checkpoint_inode(struct inode *inode)
{
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);

 if (ocfs2_mount_local(osb))
  return;

 if (!ocfs2_ci_fully_checkpointed(INODE_CACHE(inode))) {






  ocfs2_start_checkpoint(osb);

  wait_event(osb->journal->j_checkpointed,
      ocfs2_ci_fully_checkpointed(INODE_CACHE(inode)));
 }
}
