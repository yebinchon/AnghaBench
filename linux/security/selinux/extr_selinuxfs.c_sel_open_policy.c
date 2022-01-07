
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct selinux_state {int dummy; } ;
struct selinux_fs_info {int policy_opened; int mutex; struct selinux_state* state; } ;
struct policy_load_memory {int data; int len; } ;
struct inode {TYPE_1__* i_sb; } ;
struct file {struct policy_load_memory* private_data; } ;
struct TYPE_2__ {struct selinux_fs_info* s_fs_info; } ;


 int BUG_ON (struct policy_load_memory*) ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SECCLASS_SECURITY ;
 int SECINITSID_SECURITY ;
 int SECURITY__READ_POLICY ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int current_sid () ;
 scalar_t__ i_size_read (struct inode*) ;
 int i_size_write (struct inode*,scalar_t__) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int kfree (struct policy_load_memory*) ;
 struct policy_load_memory* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ security_policydb_len (struct selinux_state*) ;
 int security_read_policy (struct selinux_state*,int *,int *) ;
 int selinux_state ;
 int vfree (int ) ;

__attribute__((used)) static int sel_open_policy(struct inode *inode, struct file *filp)
{
 struct selinux_fs_info *fsi = inode->i_sb->s_fs_info;
 struct selinux_state *state = fsi->state;
 struct policy_load_memory *plm = ((void*)0);
 int rc;

 BUG_ON(filp->private_data);

 mutex_lock(&fsi->mutex);

 rc = avc_has_perm(&selinux_state,
     current_sid(), SECINITSID_SECURITY,
     SECCLASS_SECURITY, SECURITY__READ_POLICY, ((void*)0));
 if (rc)
  goto err;

 rc = -EBUSY;
 if (fsi->policy_opened)
  goto err;

 rc = -ENOMEM;
 plm = kzalloc(sizeof(*plm), GFP_KERNEL);
 if (!plm)
  goto err;

 if (i_size_read(inode) != security_policydb_len(state)) {
  inode_lock(inode);
  i_size_write(inode, security_policydb_len(state));
  inode_unlock(inode);
 }

 rc = security_read_policy(state, &plm->data, &plm->len);
 if (rc)
  goto err;

 fsi->policy_opened = 1;

 filp->private_data = plm;

 mutex_unlock(&fsi->mutex);

 return 0;
err:
 mutex_unlock(&fsi->mutex);

 if (plm)
  vfree(plm->data);
 kfree(plm);
 return rc;
}
