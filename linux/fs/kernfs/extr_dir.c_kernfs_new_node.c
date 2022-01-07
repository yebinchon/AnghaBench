
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct kernfs_node {struct kernfs_node* parent; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 struct kernfs_node* __kernfs_new_node (int ,struct kernfs_node*,char const*,int ,int ,int ,unsigned int) ;
 int kernfs_get (struct kernfs_node*) ;
 int kernfs_root (struct kernfs_node*) ;

struct kernfs_node *kernfs_new_node(struct kernfs_node *parent,
        const char *name, umode_t mode,
        kuid_t uid, kgid_t gid,
        unsigned flags)
{
 struct kernfs_node *kn;

 kn = __kernfs_new_node(kernfs_root(parent), parent,
          name, mode, uid, gid, flags);
 if (kn) {
  kernfs_get(parent);
  kn->parent = parent;
 }
 return kn;
}
