
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {TYPE_1__* dentry; } ;
struct inode {int dummy; } ;
struct file {struct path f_path; } ;
struct TYPE_2__ {struct inode* d_inode; } ;


 int ATTR_CTIME ;
 int ATTR_MTIME ;
 int ATTR_OPEN ;
 int do_truncate (TYPE_1__*,int ,int,struct file*) ;
 int get_write_access (struct inode*) ;
 int locks_verify_locked (struct file*) ;
 int put_write_access (struct inode*) ;
 int security_path_truncate (struct path const*) ;

__attribute__((used)) static int handle_truncate(struct file *filp)
{
 const struct path *path = &filp->f_path;
 struct inode *inode = path->dentry->d_inode;
 int error = get_write_access(inode);
 if (error)
  return error;



 error = locks_verify_locked(filp);
 if (!error)
  error = security_path_truncate(path);
 if (!error) {
  error = do_truncate(path->dentry, 0,
        ATTR_MTIME|ATTR_CTIME|ATTR_OPEN,
        filp);
 }
 put_write_access(inode);
 return error;
}
