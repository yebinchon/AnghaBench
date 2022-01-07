
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uprobe_consumer {int dummy; } ;
struct uprobe {int consumers; } ;


 scalar_t__ WARN_ON (int) ;
 int consumer_del (struct uprobe*,struct uprobe_consumer*) ;
 int delete_uprobe (struct uprobe*) ;
 int register_for_each_vma (struct uprobe*,int *) ;

__attribute__((used)) static void
__uprobe_unregister(struct uprobe *uprobe, struct uprobe_consumer *uc)
{
 int err;

 if (WARN_ON(!consumer_del(uprobe, uc)))
  return;

 err = register_for_each_vma(uprobe, ((void*)0));

 if (!uprobe->consumers && !err)
  delete_uprobe(uprobe);
}
