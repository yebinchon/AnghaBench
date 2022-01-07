
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_info {int dummy; } ;
struct ubifs_dent_node {int inum; } ;
struct inode {int i_ino; TYPE_1__* i_sb; } ;
struct fscrypt_name {int disk_name; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;


 int EEXIST ;
 int ENAMETOOLONG ;
 int ENODATA ;
 int ENOENT ;
 int ENOMEM ;
 int ERANGE ;
 int FSTR_INIT (char*,int ) ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 size_t UBIFS_MAX_INO_DATA ;
 scalar_t__ UBIFS_MAX_NLEN ;
 int UBIFS_MAX_XENT_NODE_SZ ;
 int XATTR_CREATE ;
 int XATTR_REPLACE ;
 int change_xattr (struct ubifs_info*,struct inode*,struct inode*,void const*,size_t) ;
 int create_xattr (struct ubifs_info*,struct inode*,struct fscrypt_name*,void const*,size_t) ;
 scalar_t__ fname_len (struct fscrypt_name*) ;
 struct inode* iget_xattr (struct ubifs_info*,int ) ;
 int inode_is_locked (struct inode*) ;
 int iput (struct inode*) ;
 int kfree (struct ubifs_dent_node*) ;
 struct ubifs_dent_node* kmalloc (int ,int ) ;
 int le64_to_cpu (int ) ;
 int strlen (char const*) ;
 int ubifs_assert (struct ubifs_info*,int ) ;
 int ubifs_tnc_lookup_nm (struct ubifs_info*,union ubifs_key*,struct ubifs_dent_node*,struct fscrypt_name*) ;
 int xent_key_init (struct ubifs_info*,union ubifs_key*,int ,struct fscrypt_name*) ;

int ubifs_xattr_set(struct inode *host, const char *name, const void *value,
      size_t size, int flags, bool check_lock)
{
 struct inode *inode;
 struct ubifs_info *c = host->i_sb->s_fs_info;
 struct fscrypt_name nm = { .disk_name = FSTR_INIT((char *)name, strlen(name))};
 struct ubifs_dent_node *xent;
 union ubifs_key key;
 int err;

 if (check_lock)
  ubifs_assert(c, inode_is_locked(host));

 if (size > UBIFS_MAX_INO_DATA)
  return -ERANGE;

 if (fname_len(&nm) > UBIFS_MAX_NLEN)
  return -ENAMETOOLONG;

 xent = kmalloc(UBIFS_MAX_XENT_NODE_SZ, GFP_NOFS);
 if (!xent)
  return -ENOMEM;





 xent_key_init(c, &key, host->i_ino, &nm);
 err = ubifs_tnc_lookup_nm(c, &key, xent, &nm);
 if (err) {
  if (err != -ENOENT)
   goto out_free;

  if (flags & XATTR_REPLACE)

   err = -ENODATA;
  else
   err = create_xattr(c, host, &nm, value, size);
  goto out_free;
 }

 if (flags & XATTR_CREATE) {

  err = -EEXIST;
  goto out_free;
 }

 inode = iget_xattr(c, le64_to_cpu(xent->inum));
 if (IS_ERR(inode)) {
  err = PTR_ERR(inode);
  goto out_free;
 }

 err = change_xattr(c, host, inode, value, size);
 iput(inode);

out_free:
 kfree(xent);
 return err;
}
