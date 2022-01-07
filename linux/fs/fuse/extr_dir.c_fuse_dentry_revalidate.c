
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct inode {int i_mode; } ;
struct fuse_inode {int state; int lock; int nlookup; } ;
struct fuse_forget_link {int dummy; } ;
struct TYPE_2__ {int mode; } ;
struct fuse_entry_out {scalar_t__ nodeid; TYPE_1__ attr; } ;
struct fuse_conn {int dummy; } ;
struct dentry {int d_name; } ;


 int ECHILD ;
 int ENOENT ;
 int ENOMEM ;
 int FUSE_ARGS (int ) ;
 int FUSE_I_INIT_RDPLUS ;
 unsigned int LOOKUP_RCU ;
 unsigned int LOOKUP_REVAL ;
 int S_IFMT ;
 int args ;
 struct inode* d_inode (struct dentry*) ;
 struct inode* d_inode_rcu (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 int entry_attr_timeout (struct fuse_entry_out*) ;
 int forget_all_cached_acls (struct inode*) ;
 int fuse_advise_use_readdirplus (struct inode*) ;
 struct fuse_forget_link* fuse_alloc_forget () ;
 int fuse_change_attributes (struct inode*,TYPE_1__*,int ,int ) ;
 int fuse_change_entry_timeout (struct dentry*,struct fuse_entry_out*) ;
 int fuse_dentry_time (struct dentry*) ;
 int fuse_get_attr_version (struct fuse_conn*) ;
 int fuse_lookup_init (struct fuse_conn*,int *,scalar_t__,int *,struct fuse_entry_out*) ;
 int fuse_queue_forget (struct fuse_conn*,struct fuse_forget_link*,scalar_t__,int) ;
 int fuse_simple_request (struct fuse_conn*,int *) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int get_jiffies_64 () ;
 scalar_t__ get_node_id (struct inode*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int kfree (struct fuse_forget_link*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ time_before64 (int ,int ) ;

__attribute__((used)) static int fuse_dentry_revalidate(struct dentry *entry, unsigned int flags)
{
 struct inode *inode;
 struct dentry *parent;
 struct fuse_conn *fc;
 struct fuse_inode *fi;
 int ret;

 inode = d_inode_rcu(entry);
 if (inode && is_bad_inode(inode))
  goto invalid;
 else if (time_before64(fuse_dentry_time(entry), get_jiffies_64()) ||
   (flags & LOOKUP_REVAL)) {
  struct fuse_entry_out outarg;
  FUSE_ARGS(args);
  struct fuse_forget_link *forget;
  u64 attr_version;


  if (!inode)
   goto invalid;

  ret = -ECHILD;
  if (flags & LOOKUP_RCU)
   goto out;

  fc = get_fuse_conn(inode);

  forget = fuse_alloc_forget();
  ret = -ENOMEM;
  if (!forget)
   goto out;

  attr_version = fuse_get_attr_version(fc);

  parent = dget_parent(entry);
  fuse_lookup_init(fc, &args, get_node_id(d_inode(parent)),
     &entry->d_name, &outarg);
  ret = fuse_simple_request(fc, &args);
  dput(parent);

  if (!ret && !outarg.nodeid)
   ret = -ENOENT;
  if (!ret) {
   fi = get_fuse_inode(inode);
   if (outarg.nodeid != get_node_id(inode)) {
    fuse_queue_forget(fc, forget, outarg.nodeid, 1);
    goto invalid;
   }
   spin_lock(&fi->lock);
   fi->nlookup++;
   spin_unlock(&fi->lock);
  }
  kfree(forget);
  if (ret == -ENOMEM)
   goto out;
  if (ret || (outarg.attr.mode ^ inode->i_mode) & S_IFMT)
   goto invalid;

  forget_all_cached_acls(inode);
  fuse_change_attributes(inode, &outarg.attr,
           entry_attr_timeout(&outarg),
           attr_version);
  fuse_change_entry_timeout(entry, &outarg);
 } else if (inode) {
  fi = get_fuse_inode(inode);
  if (flags & LOOKUP_RCU) {
   if (test_bit(FUSE_I_INIT_RDPLUS, &fi->state))
    return -ECHILD;
  } else if (test_and_clear_bit(FUSE_I_INIT_RDPLUS, &fi->state)) {
   parent = dget_parent(entry);
   fuse_advise_use_readdirplus(d_inode(parent));
   dput(parent);
  }
 }
 ret = 1;
out:
 return ret;

invalid:
 ret = 0;
 goto out;
}
