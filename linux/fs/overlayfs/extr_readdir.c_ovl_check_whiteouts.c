
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ovl_readdir_data {struct ovl_cache_entry* first_maybe_whiteout; TYPE_1__* dentry; } ;
struct ovl_cache_entry {int is_whiteout; int len; int name; struct ovl_cache_entry* next_maybe_whiteout; } ;
struct dentry {TYPE_2__* d_inode; } ;
struct cred {int dummy; } ;
struct TYPE_4__ {int i_rwsem; } ;
struct TYPE_3__ {int d_sb; } ;


 int IS_ERR (struct dentry*) ;
 int down_write_killable (int *) ;
 int dput (struct dentry*) ;
 int inode_unlock (TYPE_2__*) ;
 struct dentry* lookup_one_len (int ,struct dentry*,int ) ;
 int ovl_is_whiteout (struct dentry*) ;
 struct cred* ovl_override_creds (int ) ;
 int revert_creds (struct cred const*) ;

__attribute__((used)) static int ovl_check_whiteouts(struct dentry *dir, struct ovl_readdir_data *rdd)
{
 int err;
 struct ovl_cache_entry *p;
 struct dentry *dentry;
 const struct cred *old_cred;

 old_cred = ovl_override_creds(rdd->dentry->d_sb);

 err = down_write_killable(&dir->d_inode->i_rwsem);
 if (!err) {
  while (rdd->first_maybe_whiteout) {
   p = rdd->first_maybe_whiteout;
   rdd->first_maybe_whiteout = p->next_maybe_whiteout;
   dentry = lookup_one_len(p->name, dir, p->len);
   if (!IS_ERR(dentry)) {
    p->is_whiteout = ovl_is_whiteout(dentry);
    dput(dentry);
   }
  }
  inode_unlock(dir->d_inode);
 }
 revert_creds(old_cred);

 return err;
}
