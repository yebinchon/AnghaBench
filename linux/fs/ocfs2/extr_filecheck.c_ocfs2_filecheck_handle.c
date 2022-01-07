
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct inode {int dummy; } ;


 scalar_t__ IS_ERR (struct inode*) ;
 int OCFS2_FILECHECK_ERR_END ;
 unsigned int OCFS2_FILECHECK_ERR_FAILED ;
 int OCFS2_FILECHECK_ERR_START ;
 unsigned int OCFS2_FILECHECK_ERR_SUCCESS ;
 int iput (struct inode*) ;
 struct inode* ocfs2_iget (struct ocfs2_super*,unsigned long,unsigned int,int ) ;

__attribute__((used)) static unsigned int
ocfs2_filecheck_handle(struct ocfs2_super *osb,
         unsigned long ino, unsigned int flags)
{
 unsigned int ret = OCFS2_FILECHECK_ERR_SUCCESS;
 struct inode *inode = ((void*)0);
 int rc;

 inode = ocfs2_iget(osb, ino, flags, 0);
 if (IS_ERR(inode)) {
  rc = (int)(-(long)inode);
  if (rc >= OCFS2_FILECHECK_ERR_START &&
      rc < OCFS2_FILECHECK_ERR_END)
   ret = rc;
  else
   ret = OCFS2_FILECHECK_ERR_FAILED;
 } else
  iput(inode);

 return ret;
}
