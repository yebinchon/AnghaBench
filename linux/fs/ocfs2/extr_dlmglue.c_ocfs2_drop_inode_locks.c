
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct TYPE_2__ {int ip_rw_lockres; int ip_inode_lockres; int ip_open_lockres; } ;


 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_SB (int ) ;
 int mlog_errno (int) ;
 int ocfs2_drop_lock (int ,int *) ;

int ocfs2_drop_inode_locks(struct inode *inode)
{
 int status, err;




 err = ocfs2_drop_lock(OCFS2_SB(inode->i_sb),
         &OCFS2_I(inode)->ip_open_lockres);
 if (err < 0)
  mlog_errno(err);

 status = err;

 err = ocfs2_drop_lock(OCFS2_SB(inode->i_sb),
         &OCFS2_I(inode)->ip_inode_lockres);
 if (err < 0)
  mlog_errno(err);
 if (err < 0 && !status)
  status = err;

 err = ocfs2_drop_lock(OCFS2_SB(inode->i_sb),
         &OCFS2_I(inode)->ip_rw_lockres);
 if (err < 0)
  mlog_errno(err);
 if (err < 0 && !status)
  status = err;

 return status;
}
