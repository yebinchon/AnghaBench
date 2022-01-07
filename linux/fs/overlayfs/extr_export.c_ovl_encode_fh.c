
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int FILEID_INVALID ;
 scalar_t__ WARN_ON (int) ;
 struct dentry* d_find_any_alias (struct inode*) ;
 int dput (struct dentry*) ;
 int ovl_dentry_to_fh (struct dentry*,int *,int*) ;

__attribute__((used)) static int ovl_encode_fh(struct inode *inode, u32 *fid, int *max_len,
    struct inode *parent)
{
 struct dentry *dentry;
 int type;


 if (parent)
  return FILEID_INVALID;

 dentry = d_find_any_alias(inode);
 if (WARN_ON(!dentry))
  return FILEID_INVALID;

 type = ovl_dentry_to_fh(dentry, fid, max_len);

 dput(dentry);
 return type;
}
