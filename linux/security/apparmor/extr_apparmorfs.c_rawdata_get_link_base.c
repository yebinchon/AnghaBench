
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {struct aa_proxy* i_private; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;
struct aa_proxy {int label; } ;
struct aa_profile {TYPE_1__* rawdata; } ;
struct aa_label {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int ECHILD ;
 char const* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (char*) ;
 struct aa_label* aa_get_label_rcu (int *) ;
 int aa_put_label (struct aa_label*) ;
 char* gen_symlink_name (int,int ,char const*) ;
 struct aa_profile* labels_profile (struct aa_label*) ;
 int profile_depth (struct aa_profile*) ;
 int rawdata_link_cb ;
 int set_delayed_call (struct delayed_call*,int ,char*) ;

__attribute__((used)) static const char *rawdata_get_link_base(struct dentry *dentry,
      struct inode *inode,
      struct delayed_call *done,
      const char *name)
{
 struct aa_proxy *proxy = inode->i_private;
 struct aa_label *label;
 struct aa_profile *profile;
 char *target;
 int depth;

 if (!dentry)
  return ERR_PTR(-ECHILD);

 label = aa_get_label_rcu(&proxy->label);
 profile = labels_profile(label);
 depth = profile_depth(profile);
 target = gen_symlink_name(depth, profile->rawdata->name, name);
 aa_put_label(label);

 if (IS_ERR(target))
  return target;

 set_delayed_call(done, rawdata_link_cb, target);

 return target;
}
