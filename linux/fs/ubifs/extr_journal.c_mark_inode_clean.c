
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_inode {scalar_t__ dirty; } ;
struct ubifs_info {int dummy; } ;


 int ubifs_release_dirty_inode_budget (struct ubifs_info*,struct ubifs_inode*) ;

__attribute__((used)) static void mark_inode_clean(struct ubifs_info *c, struct ubifs_inode *ui)
{
 if (ui->dirty)
  ubifs_release_dirty_inode_budget(c, ui);
 ui->dirty = 0;
}
