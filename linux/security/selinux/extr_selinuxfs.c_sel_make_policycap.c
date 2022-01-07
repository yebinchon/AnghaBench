
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selinux_fs_info {int sb; int policycap_dir; } ;
struct inode {unsigned int i_ino; int * i_fop; } ;
struct dentry {int dummy; } ;


 unsigned int ARRAY_SIZE (char**) ;
 int ENOMEM ;
 unsigned int POLICYDB_CAPABILITY_MAX ;
 unsigned int SEL_POLICYCAP_INO_OFFSET ;
 int S_IFREG ;
 int d_add (struct dentry*,struct inode*) ;
 struct dentry* d_alloc_name (int ,char*) ;
 int dput (struct dentry*) ;
 struct inode* sel_make_inode (int ,int) ;
 int sel_policycap_ops ;
 int sel_remove_entries (int ) ;
 char** selinux_policycap_names ;

__attribute__((used)) static int sel_make_policycap(struct selinux_fs_info *fsi)
{
 unsigned int iter;
 struct dentry *dentry = ((void*)0);
 struct inode *inode = ((void*)0);

 sel_remove_entries(fsi->policycap_dir);

 for (iter = 0; iter <= POLICYDB_CAPABILITY_MAX; iter++) {
  if (iter < ARRAY_SIZE(selinux_policycap_names))
   dentry = d_alloc_name(fsi->policycap_dir,
           selinux_policycap_names[iter]);
  else
   dentry = d_alloc_name(fsi->policycap_dir, "unknown");

  if (dentry == ((void*)0))
   return -ENOMEM;

  inode = sel_make_inode(fsi->sb, S_IFREG | 0444);
  if (inode == ((void*)0)) {
   dput(dentry);
   return -ENOMEM;
  }

  inode->i_fop = &sel_policycap_ops;
  inode->i_ino = iter | SEL_POLICYCAP_INO_OFFSET;
  d_add(dentry, inode);
 }

 return 0;
}
