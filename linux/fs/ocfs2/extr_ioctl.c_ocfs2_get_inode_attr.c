
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_3__ {unsigned int ip_attr; } ;


 TYPE_1__* OCFS2_I (struct inode*) ;
 int mlog_errno (int) ;
 int ocfs2_get_inode_flags (TYPE_1__*) ;
 int ocfs2_inode_lock (struct inode*,int *,int ) ;
 int ocfs2_inode_unlock (struct inode*,int ) ;

__attribute__((used)) static int ocfs2_get_inode_attr(struct inode *inode, unsigned *flags)
{
 int status;

 status = ocfs2_inode_lock(inode, ((void*)0), 0);
 if (status < 0) {
  mlog_errno(status);
  return status;
 }
 ocfs2_get_inode_flags(OCFS2_I(inode));
 *flags = OCFS2_I(inode)->ip_attr;
 ocfs2_inode_unlock(inode, 0);

 return status;
}
