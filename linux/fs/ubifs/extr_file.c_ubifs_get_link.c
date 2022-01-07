
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_inode {char const* data; int data_len; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;


 int ECHILD ;
 char const* ERR_PTR (int ) ;
 int IS_ENCRYPTED (struct inode*) ;
 char const* fscrypt_get_symlink (struct inode*,char const*,int ,struct delayed_call*) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;

__attribute__((used)) static const char *ubifs_get_link(struct dentry *dentry,
         struct inode *inode,
         struct delayed_call *done)
{
 struct ubifs_inode *ui = ubifs_inode(inode);

 if (!IS_ENCRYPTED(inode))
  return ui->data;

 if (!dentry)
  return ERR_PTR(-ECHILD);

 return fscrypt_get_symlink(inode, ui->data, ui->data_len, done);
}
