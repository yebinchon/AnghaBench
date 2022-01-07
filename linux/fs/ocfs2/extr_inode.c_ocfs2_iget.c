
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_6__ {void* t_tid; } ;
typedef TYPE_2__ transaction_t ;
typedef void* tid_t ;
struct super_block {int dummy; } ;
struct ocfs2_super {struct super_block* sb; } ;
struct ocfs2_inode_info {scalar_t__ ip_blkno; void* i_datasync_tid; void* i_sync_tid; } ;
struct ocfs2_find_inode_args {unsigned int fi_flags; int fi_sysfile_type; int fi_ino; scalar_t__ fi_blkno; } ;
struct inode {int i_state; } ;
struct TYPE_7__ {int j_state_lock; void* j_commit_sequence; TYPE_2__* j_committing_transaction; TYPE_2__* j_running_transaction; } ;
typedef TYPE_3__ journal_t ;
struct TYPE_8__ {TYPE_1__* journal; } ;
struct TYPE_5__ {TYPE_3__* j_journal; } ;


 int EINVAL ;
 int ENOMEM ;
 struct inode* ERR_PTR (int) ;
 int ESTALE ;
 int IS_ERR (struct inode*) ;
 int I_NEW ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 TYPE_4__* OCFS2_SB (struct super_block*) ;
 int PTR_ERR (struct inode*) ;
 struct inode* iget5_locked (struct super_block*,int ,int ,int ,struct ocfs2_find_inode_args*) ;
 int ino_from_blkno (struct super_block*,scalar_t__) ;
 int iput (struct inode*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int mlog_errno (int ) ;
 int ocfs2_find_actor ;
 int ocfs2_init_locked_inode ;
 int ocfs2_read_locked_inode (struct inode*,struct ocfs2_find_inode_args*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int trace_ocfs2_iget5_locked (int) ;
 int trace_ocfs2_iget_begin (unsigned long long,unsigned int,int) ;
 int trace_ocfs2_iget_end (struct inode*,unsigned long long) ;
 int unlock_new_inode (struct inode*) ;

struct inode *ocfs2_iget(struct ocfs2_super *osb, u64 blkno, unsigned flags,
    int sysfile_type)
{
 int rc = -ESTALE;
 struct inode *inode = ((void*)0);
 struct super_block *sb = osb->sb;
 struct ocfs2_find_inode_args args;
 journal_t *journal = OCFS2_SB(sb)->journal->j_journal;

 trace_ocfs2_iget_begin((unsigned long long)blkno, flags,
          sysfile_type);




 if (blkno == 0) {
  inode = ERR_PTR(-EINVAL);
  mlog_errno(PTR_ERR(inode));
  goto bail;
 }

 args.fi_blkno = blkno;
 args.fi_flags = flags;
 args.fi_ino = ino_from_blkno(sb, blkno);
 args.fi_sysfile_type = sysfile_type;

 inode = iget5_locked(sb, args.fi_ino, ocfs2_find_actor,
        ocfs2_init_locked_inode, &args);



 if (inode == ((void*)0)) {
  inode = ERR_PTR(-ENOMEM);
  mlog_errno(PTR_ERR(inode));
  goto bail;
 }
 trace_ocfs2_iget5_locked(inode->i_state);
 if (inode->i_state & I_NEW) {
  rc = ocfs2_read_locked_inode(inode, &args);
  unlock_new_inode(inode);
 }
 if (is_bad_inode(inode)) {
  iput(inode);
  inode = ERR_PTR(rc);
  goto bail;
 }
 if (journal) {
  transaction_t *transaction;
  tid_t tid;
  struct ocfs2_inode_info *oi = OCFS2_I(inode);

  read_lock(&journal->j_state_lock);
  if (journal->j_running_transaction)
   transaction = journal->j_running_transaction;
  else
   transaction = journal->j_committing_transaction;
  if (transaction)
   tid = transaction->t_tid;
  else
   tid = journal->j_commit_sequence;
  read_unlock(&journal->j_state_lock);
  oi->i_sync_tid = tid;
  oi->i_datasync_tid = tid;
 }

bail:
 if (!IS_ERR(inode)) {
  trace_ocfs2_iget_end(inode,
   (unsigned long long)OCFS2_I(inode)->ip_blkno);
 }

 return inode;
}
