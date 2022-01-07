
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int root; } ;
struct kernfs_node {int * priv; int * ns; TYPE_1__ dir; int flags; } ;


 int ENOMEM ;
 struct kernfs_node* ERR_PTR (int) ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 int KERNFS_DIR ;
 int KERNFS_EMPTY_DIR ;
 int S_IFDIR ;
 int S_IRUGO ;
 int S_IXUGO ;
 int kernfs_add_one (struct kernfs_node*) ;
 struct kernfs_node* kernfs_new_node (struct kernfs_node*,char const*,int,int ,int ,int ) ;
 int kernfs_put (struct kernfs_node*) ;

struct kernfs_node *kernfs_create_empty_dir(struct kernfs_node *parent,
         const char *name)
{
 struct kernfs_node *kn;
 int rc;


 kn = kernfs_new_node(parent, name, S_IRUGO|S_IXUGO|S_IFDIR,
        GLOBAL_ROOT_UID, GLOBAL_ROOT_GID, KERNFS_DIR);
 if (!kn)
  return ERR_PTR(-ENOMEM);

 kn->flags |= KERNFS_EMPTY_DIR;
 kn->dir.root = parent->dir.root;
 kn->ns = ((void*)0);
 kn->priv = ((void*)0);


 rc = kernfs_add_one(kn);
 if (!rc)
  return kn;

 kernfs_put(kn);
 return ERR_PTR(rc);
}
