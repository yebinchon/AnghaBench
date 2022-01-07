
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
typedef scalar_t__ u32 ;
struct kernfs_root {int ino_idr; scalar_t__ next_generation; } ;
struct TYPE_2__ {int ino; scalar_t__ generation; } ;
struct kernfs_node {char const* name; unsigned int flags; TYPE_1__ id; int mode; int rb; int active; int count; } ;
struct iattr {int ia_valid; int ia_gid; int ia_uid; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int ATTR_GID ;
 int ATTR_UID ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 int KN_DEACTIVATED_BIAS ;
 int RB_CLEAR_NODE (int *) ;
 int __kernfs_setattr (struct kernfs_node*,struct iattr*) ;
 int atomic_set (int *,int ) ;
 int atomic_set_release (int *,int) ;
 int gid_eq (int ,int ) ;
 int idr_alloc_cyclic (int *,struct kernfs_node*,int,int ,int ) ;
 int idr_get_cursor (int *) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int idr_remove (int *,int) ;
 int kernfs_idr_lock ;
 int kernfs_node_cache ;
 int kfree_const (char const*) ;
 int kmem_cache_free (int ,struct kernfs_node*) ;
 struct kernfs_node* kmem_cache_zalloc (int ,int ) ;
 char* kstrdup_const (char const*,int ) ;
 int security_kernfs_init_security (struct kernfs_node*,struct kernfs_node*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int uid_eq (int ,int ) ;

__attribute__((used)) static struct kernfs_node *__kernfs_new_node(struct kernfs_root *root,
          struct kernfs_node *parent,
          const char *name, umode_t mode,
          kuid_t uid, kgid_t gid,
          unsigned flags)
{
 struct kernfs_node *kn;
 u32 gen;
 int cursor;
 int ret;

 name = kstrdup_const(name, GFP_KERNEL);
 if (!name)
  return ((void*)0);

 kn = kmem_cache_zalloc(kernfs_node_cache, GFP_KERNEL);
 if (!kn)
  goto err_out1;

 idr_preload(GFP_KERNEL);
 spin_lock(&kernfs_idr_lock);
 cursor = idr_get_cursor(&root->ino_idr);
 ret = idr_alloc_cyclic(&root->ino_idr, kn, 1, 0, GFP_ATOMIC);
 if (ret >= 0 && ret < cursor)
  root->next_generation++;
 gen = root->next_generation;
 spin_unlock(&kernfs_idr_lock);
 idr_preload_end();
 if (ret < 0)
  goto err_out2;
 kn->id.ino = ret;
 kn->id.generation = gen;





 atomic_set_release(&kn->count, 1);
 atomic_set(&kn->active, KN_DEACTIVATED_BIAS);
 RB_CLEAR_NODE(&kn->rb);

 kn->name = name;
 kn->mode = mode;
 kn->flags = flags;

 if (!uid_eq(uid, GLOBAL_ROOT_UID) || !gid_eq(gid, GLOBAL_ROOT_GID)) {
  struct iattr iattr = {
   .ia_valid = ATTR_UID | ATTR_GID,
   .ia_uid = uid,
   .ia_gid = gid,
  };

  ret = __kernfs_setattr(kn, &iattr);
  if (ret < 0)
   goto err_out3;
 }

 if (parent) {
  ret = security_kernfs_init_security(parent, kn);
  if (ret)
   goto err_out3;
 }

 return kn;

 err_out3:
 idr_remove(&root->ino_idr, kn->id.ino);
 err_out2:
 kmem_cache_free(kernfs_node_cache, kn);
 err_out1:
 kfree_const(name);
 return ((void*)0);
}
