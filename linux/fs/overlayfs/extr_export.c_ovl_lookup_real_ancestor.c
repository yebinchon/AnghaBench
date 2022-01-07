
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {struct dentry* s_root; } ;
struct ovl_layer {TYPE_1__* mnt; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct dentry* mnt_root; } ;


 int EIO ;
 struct dentry* ERR_PTR (int ) ;
 int EXDEV ;
 struct dentry* dget (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 struct dentry* ovl_lookup_real_inode (struct super_block*,struct dentry*,struct ovl_layer*) ;

__attribute__((used)) static struct dentry *ovl_lookup_real_ancestor(struct super_block *sb,
            struct dentry *real,
            struct ovl_layer *layer)
{
 struct dentry *next, *parent = ((void*)0);
 struct dentry *ancestor = ERR_PTR(-EIO);

 if (real == layer->mnt->mnt_root)
  return dget(sb->s_root);


 next = dget(real);
 for (;;) {
  parent = dget_parent(next);





  ancestor = ovl_lookup_real_inode(sb, next, layer);
  if (ancestor)
   break;

  if (parent == layer->mnt->mnt_root) {
   ancestor = dget(sb->s_root);
   break;
  }






  if (parent == next) {
   ancestor = ERR_PTR(-EXDEV);
   break;
  }

  dput(next);
  next = parent;
 }

 dput(parent);
 dput(next);

 return ancestor;
}
