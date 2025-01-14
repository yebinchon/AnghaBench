
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct integrity_iint_cache {int dummy; } ;
struct inode {int i_mode; } ;
struct file {int dummy; } ;


 int S_ISREG (int ) ;
 struct inode* file_inode (struct file*) ;
 int ima_check_last_writer (struct integrity_iint_cache*,struct inode*,struct file*) ;
 int ima_policy_flag ;
 struct integrity_iint_cache* integrity_iint_find (struct inode*) ;

void ima_file_free(struct file *file)
{
 struct inode *inode = file_inode(file);
 struct integrity_iint_cache *iint;

 if (!ima_policy_flag || !S_ISREG(inode->i_mode))
  return;

 iint = integrity_iint_find(inode);
 if (!iint)
  return;

 ima_check_last_writer(iint, inode, file);
}
