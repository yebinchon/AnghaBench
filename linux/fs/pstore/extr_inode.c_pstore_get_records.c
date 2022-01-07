
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pstore_info {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct dentry* s_root; } ;


 int d_inode (struct dentry*) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 struct pstore_info* psinfo ;
 int pstore_get_backend_records (struct pstore_info*,struct dentry*,int) ;
 TYPE_1__* pstore_sb ;

void pstore_get_records(int quiet)
{
 struct pstore_info *psi = psinfo;
 struct dentry *root;

 if (!psi || !pstore_sb)
  return;

 root = pstore_sb->s_root;

 inode_lock(d_inode(root));
 pstore_get_backend_records(psi, root, quiet);
 inode_unlock(d_inode(root));
}
