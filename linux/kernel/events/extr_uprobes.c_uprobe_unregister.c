
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uprobe_consumer {int dummy; } ;
struct uprobe {int register_rwsem; } ;
struct inode {int dummy; } ;
typedef int loff_t ;


 scalar_t__ WARN_ON (int) ;
 int __uprobe_unregister (struct uprobe*,struct uprobe_consumer*) ;
 int down_write (int *) ;
 struct uprobe* find_uprobe (struct inode*,int ) ;
 int put_uprobe (struct uprobe*) ;
 int up_write (int *) ;

void uprobe_unregister(struct inode *inode, loff_t offset, struct uprobe_consumer *uc)
{
 struct uprobe *uprobe;

 uprobe = find_uprobe(inode, offset);
 if (WARN_ON(!uprobe))
  return;

 down_write(&uprobe->register_rwsem);
 __uprobe_unregister(uprobe, uc);
 up_write(&uprobe->register_rwsem);
 put_uprobe(uprobe);
}
