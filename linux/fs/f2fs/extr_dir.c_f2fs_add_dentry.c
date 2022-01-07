
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct qstr {int len; int name; } ;
struct inode {int dummy; } ;
struct fscrypt_name {int usr_fname; } ;
typedef int nid_t ;


 int EAGAIN ;
 int F2FS_I_SB (struct inode*) ;
 int REQ_TIME ;
 int f2fs_add_inline_entry (struct inode*,struct qstr*,int ,struct inode*,int ,int ) ;
 int f2fs_add_regular_entry (struct inode*,struct qstr*,int ,struct inode*,int ,int ) ;
 scalar_t__ f2fs_has_inline_dentry (struct inode*) ;
 int f2fs_update_time (int ,int ) ;
 int fname_len (struct fscrypt_name*) ;
 int fname_name (struct fscrypt_name*) ;

int f2fs_add_dentry(struct inode *dir, struct fscrypt_name *fname,
    struct inode *inode, nid_t ino, umode_t mode)
{
 struct qstr new_name;
 int err = -EAGAIN;

 new_name.name = fname_name(fname);
 new_name.len = fname_len(fname);

 if (f2fs_has_inline_dentry(dir))
  err = f2fs_add_inline_entry(dir, &new_name, fname->usr_fname,
       inode, ino, mode);
 if (err == -EAGAIN)
  err = f2fs_add_regular_entry(dir, &new_name, fname->usr_fname,
       inode, ino, mode);

 f2fs_update_time(F2FS_I_SB(dir), REQ_TIME);
 return err;
}
