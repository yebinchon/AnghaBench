
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernfs_syscall_ops {int dummy; } ;
struct kernfs_root {int next_generation; unsigned int flags; int deactivate_waitq; struct kernfs_node* kn; struct kernfs_syscall_ops* syscall_ops; int ino_idr; int supers; } ;
struct TYPE_2__ {struct kernfs_root* root; } ;
struct kernfs_node {TYPE_1__ dir; void* priv; } ;


 int ENOMEM ;
 struct kernfs_root* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 int INIT_LIST_HEAD (int *) ;
 int KERNFS_DIR ;
 int KERNFS_ROOT_CREATE_DEACTIVATED ;
 int S_IFDIR ;
 int S_IRUGO ;
 int S_IXUGO ;
 struct kernfs_node* __kernfs_new_node (struct kernfs_root*,int *,char*,int,int ,int ,int ) ;
 int idr_destroy (int *) ;
 int idr_init (int *) ;
 int init_waitqueue_head (int *) ;
 int kernfs_activate (struct kernfs_node*) ;
 int kfree (struct kernfs_root*) ;
 struct kernfs_root* kzalloc (int,int ) ;

struct kernfs_root *kernfs_create_root(struct kernfs_syscall_ops *scops,
           unsigned int flags, void *priv)
{
 struct kernfs_root *root;
 struct kernfs_node *kn;

 root = kzalloc(sizeof(*root), GFP_KERNEL);
 if (!root)
  return ERR_PTR(-ENOMEM);

 idr_init(&root->ino_idr);
 INIT_LIST_HEAD(&root->supers);
 root->next_generation = 1;

 kn = __kernfs_new_node(root, ((void*)0), "", S_IFDIR | S_IRUGO | S_IXUGO,
          GLOBAL_ROOT_UID, GLOBAL_ROOT_GID,
          KERNFS_DIR);
 if (!kn) {
  idr_destroy(&root->ino_idr);
  kfree(root);
  return ERR_PTR(-ENOMEM);
 }

 kn->priv = priv;
 kn->dir.root = root;

 root->syscall_ops = scops;
 root->flags = flags;
 root->kn = kn;
 init_waitqueue_head(&root->deactivate_waitq);

 if (!(root->flags & KERNFS_ROOT_CREATE_DEACTIVATED))
  kernfs_activate(kn);

 return root;
}
