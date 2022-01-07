
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_2__ {int list; int name; int hname; } ;
struct aa_ns {int lock; int sub_ns; TYPE_1__ base; int parent; scalar_t__ level; } ;


 int AA_BUG (int) ;
 int AA_ERROR (char*,int ) ;
 int ENOMEM ;
 struct aa_ns* ERR_PTR (int) ;
 int __aafs_ns_mkdir (struct aa_ns*,int ,char const*,struct dentry*) ;
 int aa_free_ns (struct aa_ns*) ;
 int aa_get_ns (struct aa_ns*) ;
 struct aa_ns* alloc_ns (int ,char const*) ;
 int list_add_rcu (int *,int *) ;
 int mutex_is_locked (int *) ;
 int mutex_lock_nested (int *,scalar_t__) ;
 int mutex_unlock (int *) ;
 int ns_subns_dir (struct aa_ns*) ;

__attribute__((used)) static struct aa_ns *__aa_create_ns(struct aa_ns *parent, const char *name,
        struct dentry *dir)
{
 struct aa_ns *ns;
 int error;

 AA_BUG(!parent);
 AA_BUG(!name);
 AA_BUG(!mutex_is_locked(&parent->lock));

 ns = alloc_ns(parent->base.hname, name);
 if (!ns)
  return ERR_PTR(-ENOMEM);
 ns->level = parent->level + 1;
 mutex_lock_nested(&ns->lock, ns->level);
 error = __aafs_ns_mkdir(ns, ns_subns_dir(parent), name, dir);
 if (error) {
  AA_ERROR("Failed to create interface for ns %s\n",
    ns->base.name);
  mutex_unlock(&ns->lock);
  aa_free_ns(ns);
  return ERR_PTR(error);
 }
 ns->parent = aa_get_ns(parent);
 list_add_rcu(&ns->base.list, &parent->sub_ns);

 aa_get_ns(ns);
 mutex_unlock(&ns->lock);

 return ns;
}
