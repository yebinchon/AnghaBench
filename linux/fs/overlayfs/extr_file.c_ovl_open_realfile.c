
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct file {int f_flags; int f_path; } ;
struct cred {int dummy; } ;


 int FMODE_NONOTIFY ;
 scalar_t__ IS_ERR (struct file*) ;
 int O_NOATIME ;
 int current_cred () ;
 struct inode* file_inode (struct file const*) ;
 struct file* open_with_fake_path (int *,int,struct inode*,int ) ;
 struct cred* ovl_override_creds (int ) ;
 int ovl_whatisit (struct inode*,struct inode*) ;
 int pr_debug (char*,struct file const*,struct file const*,int ,int,struct file*,int) ;
 int revert_creds (struct cred const*) ;

__attribute__((used)) static struct file *ovl_open_realfile(const struct file *file,
          struct inode *realinode)
{
 struct inode *inode = file_inode(file);
 struct file *realfile;
 const struct cred *old_cred;
 int flags = file->f_flags | O_NOATIME | FMODE_NONOTIFY;

 old_cred = ovl_override_creds(inode->i_sb);
 realfile = open_with_fake_path(&file->f_path, flags, realinode,
           current_cred());
 revert_creds(old_cred);

 pr_debug("open(%p[%pD2/%c], 0%o) -> (%p, 0%o)\n",
   file, file, ovl_whatisit(inode, realinode), file->f_flags,
   realfile, IS_ERR(realfile) ? 0 : realfile->f_flags);

 return realfile;
}
