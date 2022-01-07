
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct nfs_renamedata {int cred; TYPE_1__* new_dir; TYPE_1__* old_dir; int new_dentry; int old_dentry; scalar_t__ cancelled; } ;
struct TYPE_3__ {int i_lock; struct super_block* i_sb; } ;


 int d_inode (int ) ;
 scalar_t__ d_really_is_positive (int ) ;
 int dput (int ) ;
 int iput (TYPE_1__*) ;
 int kfree (struct nfs_renamedata*) ;
 int nfs_force_lookup_revalidate (TYPE_1__*) ;
 int nfs_mark_for_revalidate (int ) ;
 int nfs_sb_deactive (struct super_block*) ;
 int put_cred (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nfs_async_rename_release(void *calldata)
{
 struct nfs_renamedata *data = calldata;
 struct super_block *sb = data->old_dir->i_sb;

 if (d_really_is_positive(data->old_dentry))
  nfs_mark_for_revalidate(d_inode(data->old_dentry));



 if (data->cancelled) {
  spin_lock(&data->old_dir->i_lock);
  nfs_force_lookup_revalidate(data->old_dir);
  spin_unlock(&data->old_dir->i_lock);
  if (data->new_dir != data->old_dir) {
   spin_lock(&data->new_dir->i_lock);
   nfs_force_lookup_revalidate(data->new_dir);
   spin_unlock(&data->new_dir->i_lock);
  }
 }

 dput(data->old_dentry);
 dput(data->new_dentry);
 iput(data->old_dir);
 iput(data->new_dir);
 nfs_sb_deactive(sb);
 put_cred(data->cred);
 kfree(data);
}
