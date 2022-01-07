
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct file {int dummy; } ;
struct fd {int file; } ;
struct cred {int dummy; } ;
typedef scalar_t__ loff_t ;
typedef enum ovl_copyop { ____Placeholder_ovl_copyop } ovl_copyop ;





 int fdput (struct fd) ;
 struct inode* file_inode (struct file*) ;
 int ovl_copyattr (int ,struct inode*) ;
 int ovl_inode_real (struct inode*) ;
 struct cred* ovl_override_creds (int ) ;
 scalar_t__ ovl_real_fdget (struct file*,struct fd*) ;
 int revert_creds (struct cred const*) ;
 scalar_t__ vfs_clone_file_range (int ,scalar_t__,int ,scalar_t__,scalar_t__,unsigned int) ;
 scalar_t__ vfs_copy_file_range (int ,scalar_t__,int ,scalar_t__,scalar_t__,unsigned int) ;
 scalar_t__ vfs_dedupe_file_range_one (int ,scalar_t__,int ,scalar_t__,scalar_t__,unsigned int) ;

__attribute__((used)) static loff_t ovl_copyfile(struct file *file_in, loff_t pos_in,
       struct file *file_out, loff_t pos_out,
       loff_t len, unsigned int flags, enum ovl_copyop op)
{
 struct inode *inode_out = file_inode(file_out);
 struct fd real_in, real_out;
 const struct cred *old_cred;
 loff_t ret;

 ret = ovl_real_fdget(file_out, &real_out);
 if (ret)
  return ret;

 ret = ovl_real_fdget(file_in, &real_in);
 if (ret) {
  fdput(real_out);
  return ret;
 }

 old_cred = ovl_override_creds(file_inode(file_out)->i_sb);
 switch (op) {
 case 129:
  ret = vfs_copy_file_range(real_in.file, pos_in,
       real_out.file, pos_out, len, flags);
  break;

 case 130:
  ret = vfs_clone_file_range(real_in.file, pos_in,
        real_out.file, pos_out, len, flags);
  break;

 case 128:
  ret = vfs_dedupe_file_range_one(real_in.file, pos_in,
      real_out.file, pos_out, len,
      flags);
  break;
 }
 revert_creds(old_cred);


 ovl_copyattr(ovl_inode_real(inode_out), inode_out);

 fdput(real_in);
 fdput(real_out);

 return ret;
}
