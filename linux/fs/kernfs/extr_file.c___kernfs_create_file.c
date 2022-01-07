
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct lock_class_key {int dummy; } ;
struct kernfs_ops {scalar_t__ release; scalar_t__ mmap; scalar_t__ seq_show; } ;
struct TYPE_2__ {int size; struct kernfs_ops const* ops; } ;
struct kernfs_node {int flags; int dep_map; void* priv; void const* ns; TYPE_1__ attr; } ;
typedef int loff_t ;
typedef int kuid_t ;
typedef int kgid_t ;


 int ENOMEM ;
 struct kernfs_node* ERR_PTR (int) ;
 unsigned int KERNFS_FILE ;
 int KERNFS_HAS_MMAP ;
 int KERNFS_HAS_RELEASE ;
 int KERNFS_HAS_SEQ_SHOW ;
 int KERNFS_LOCKDEP ;
 int S_IALLUGO ;
 int S_IFREG ;
 int kernfs_add_one (struct kernfs_node*) ;
 struct kernfs_node* kernfs_new_node (struct kernfs_node*,char const*,int,int ,int ,unsigned int) ;
 int kernfs_put (struct kernfs_node*) ;
 int lockdep_init_map (int *,char*,struct lock_class_key*,int ) ;

struct kernfs_node *__kernfs_create_file(struct kernfs_node *parent,
      const char *name,
      umode_t mode, kuid_t uid, kgid_t gid,
      loff_t size,
      const struct kernfs_ops *ops,
      void *priv, const void *ns,
      struct lock_class_key *key)
{
 struct kernfs_node *kn;
 unsigned flags;
 int rc;

 flags = KERNFS_FILE;

 kn = kernfs_new_node(parent, name, (mode & S_IALLUGO) | S_IFREG,
        uid, gid, flags);
 if (!kn)
  return ERR_PTR(-ENOMEM);

 kn->attr.ops = ops;
 kn->attr.size = size;
 kn->ns = ns;
 kn->priv = priv;
 if (ops->seq_show)
  kn->flags |= KERNFS_HAS_SEQ_SHOW;
 if (ops->mmap)
  kn->flags |= KERNFS_HAS_MMAP;
 if (ops->release)
  kn->flags |= KERNFS_HAS_RELEASE;

 rc = kernfs_add_one(kn);
 if (rc) {
  kernfs_put(kn);
  return ERR_PTR(rc);
 }
 return kn;
}
