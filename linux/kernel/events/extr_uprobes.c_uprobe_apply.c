
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uprobe_consumer {struct uprobe_consumer* next; } ;
struct uprobe {int register_rwsem; struct uprobe_consumer* consumers; } ;
struct inode {int dummy; } ;
typedef int loff_t ;


 int ENOENT ;
 scalar_t__ WARN_ON (int) ;
 int down_write (int *) ;
 struct uprobe* find_uprobe (struct inode*,int ) ;
 int put_uprobe (struct uprobe*) ;
 int register_for_each_vma (struct uprobe*,struct uprobe_consumer*) ;
 int up_write (int *) ;

int uprobe_apply(struct inode *inode, loff_t offset,
   struct uprobe_consumer *uc, bool add)
{
 struct uprobe *uprobe;
 struct uprobe_consumer *con;
 int ret = -ENOENT;

 uprobe = find_uprobe(inode, offset);
 if (WARN_ON(!uprobe))
  return ret;

 down_write(&uprobe->register_rwsem);
 for (con = uprobe->consumers; con && con != uc ; con = con->next)
  ;
 if (con)
  ret = register_for_each_vma(uprobe, add ? uc : ((void*)0));
 up_write(&uprobe->register_rwsem);
 put_uprobe(uprobe);

 return ret;
}
