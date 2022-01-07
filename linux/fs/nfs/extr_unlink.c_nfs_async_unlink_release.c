
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct nfs_unlinkdata {struct dentry* dentry; } ;
struct dentry {int d_parent; struct super_block* d_sb; } ;
struct TYPE_2__ {int rmdir_sem; } ;


 TYPE_1__* NFS_I (int ) ;
 int d_inode (int ) ;
 int d_lookup_done (struct dentry*) ;
 int dput (struct dentry*) ;
 int nfs_free_unlinkdata (struct nfs_unlinkdata*) ;
 int nfs_sb_deactive (struct super_block*) ;
 int up_read_non_owner (int *) ;

__attribute__((used)) static void nfs_async_unlink_release(void *calldata)
{
 struct nfs_unlinkdata *data = calldata;
 struct dentry *dentry = data->dentry;
 struct super_block *sb = dentry->d_sb;

 up_read_non_owner(&NFS_I(d_inode(dentry->d_parent))->rmdir_sem);
 d_lookup_done(dentry);
 nfs_free_unlinkdata(data);
 dput(dentry);
 nfs_sb_deactive(sb);
}
