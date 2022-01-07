
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct file {int f_flags; } ;
struct cred {int dummy; } ;


 int MAY_APPEND ;
 int MAY_WRITE ;
 int O_APPEND ;
 struct cred* current_cred () ;
 int file_has_perm (struct cred const*,struct file*,int ) ;
 struct inode* file_inode (struct file*) ;
 int file_mask_to_av (int ,int) ;

__attribute__((used)) static int selinux_revalidate_file_permission(struct file *file, int mask)
{
 const struct cred *cred = current_cred();
 struct inode *inode = file_inode(file);


 if ((file->f_flags & O_APPEND) && (mask & MAY_WRITE))
  mask |= MAY_APPEND;

 return file_has_perm(cred, file,
        file_mask_to_av(inode->i_mode, mask));
}
