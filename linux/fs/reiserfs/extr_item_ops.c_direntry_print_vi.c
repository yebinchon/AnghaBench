
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_item {int vi_ih; int vi_type; int vi_index; struct direntry_uarea* vi_uarea; } ;
struct direntry_uarea {int entry_count; int * entry_sizes; int flags; } ;


 int printk (char*,...) ;
 int reiserfs_warning (int *,char*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void direntry_print_vi(struct virtual_item *vi)
{
 int i;
 struct direntry_uarea *dir_u = vi->vi_uarea;

 reiserfs_warning(((void*)0), "reiserfs-16104",
    "DIRENTRY, index %d, type 0x%x, %h, flags 0x%x",
    vi->vi_index, vi->vi_type, vi->vi_ih, dir_u->flags);
 printk("%d entries: ", dir_u->entry_count);
 for (i = 0; i < dir_u->entry_count; i++)
  printk("%d ", dir_u->entry_sizes[i]);
 printk("\n");
}
