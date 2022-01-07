
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int nfs_lookup_revalidate_done (struct inode*,struct dentry*,struct inode*,int) ;
 int nfs_save_change_attribute (struct inode*) ;
 int nfs_set_verifier (struct dentry*,int ) ;

__attribute__((used)) static int
nfs_lookup_revalidate_delegated(struct inode *dir, struct dentry *dentry,
    struct inode *inode)
{
 nfs_set_verifier(dentry, nfs_save_change_attribute(dir));
 return nfs_lookup_revalidate_done(dir, dentry, inode, 1);
}
