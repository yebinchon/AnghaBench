
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct TYPE_2__ {int root; } ;
struct kernfs_node {void* priv; void const* ns; TYPE_1__ dir; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int ENOMEM ;
 struct kernfs_node* ERR_PTR (int) ;
 int KERNFS_DIR ;
 int S_IFDIR ;
 int kernfs_add_one (struct kernfs_node*) ;
 struct kernfs_node* kernfs_new_node (struct kernfs_node*,char const*,int,int ,int ,int ) ;
 int kernfs_put (struct kernfs_node*) ;

struct kernfs_node *kernfs_create_dir_ns(struct kernfs_node *parent,
      const char *name, umode_t mode,
      kuid_t uid, kgid_t gid,
      void *priv, const void *ns)
{
 struct kernfs_node *kn;
 int rc;


 kn = kernfs_new_node(parent, name, mode | S_IFDIR,
        uid, gid, KERNFS_DIR);
 if (!kn)
  return ERR_PTR(-ENOMEM);

 kn->dir.root = parent->dir.root;
 kn->ns = ns;
 kn->priv = priv;


 rc = kernfs_add_one(kn);
 if (!rc)
  return kn;

 kernfs_put(kn);
 return ERR_PTR(rc);
}
