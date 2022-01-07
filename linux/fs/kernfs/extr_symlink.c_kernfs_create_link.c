
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct kernfs_node* target_kn; } ;
struct kernfs_node {TYPE_1__ symlink; int ns; TYPE_2__* iattr; } ;
typedef int kuid_t ;
typedef int kgid_t ;
struct TYPE_4__ {int ia_gid; int ia_uid; } ;


 int ENOMEM ;
 struct kernfs_node* ERR_PTR (int) ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 int KERNFS_LINK ;
 int S_IFLNK ;
 int S_IRWXUGO ;
 int kernfs_add_one (struct kernfs_node*) ;
 int kernfs_get (struct kernfs_node*) ;
 struct kernfs_node* kernfs_new_node (struct kernfs_node*,char const*,int,int ,int ,int ) ;
 scalar_t__ kernfs_ns_enabled (struct kernfs_node*) ;
 int kernfs_put (struct kernfs_node*) ;

struct kernfs_node *kernfs_create_link(struct kernfs_node *parent,
           const char *name,
           struct kernfs_node *target)
{
 struct kernfs_node *kn;
 int error;
 kuid_t uid = GLOBAL_ROOT_UID;
 kgid_t gid = GLOBAL_ROOT_GID;

 if (target->iattr) {
  uid = target->iattr->ia_uid;
  gid = target->iattr->ia_gid;
 }

 kn = kernfs_new_node(parent, name, S_IFLNK|S_IRWXUGO, uid, gid,
        KERNFS_LINK);
 if (!kn)
  return ERR_PTR(-ENOMEM);

 if (kernfs_ns_enabled(parent))
  kn->ns = target->ns;
 kn->symlink.target_kn = target;
 kernfs_get(target);

 error = kernfs_add_one(kn);
 if (!error)
  return kn;

 kernfs_put(kn);
 return ERR_PTR(error);
}
