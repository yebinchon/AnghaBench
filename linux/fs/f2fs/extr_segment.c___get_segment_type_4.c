
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int i_mode; } ;
struct f2fs_io_info {scalar_t__ type; TYPE_2__* page; } ;
struct TYPE_5__ {TYPE_1__* mapping; } ;
struct TYPE_4__ {struct inode* host; } ;


 int CURSEG_COLD_DATA ;
 int CURSEG_COLD_NODE ;
 int CURSEG_HOT_DATA ;
 int CURSEG_WARM_NODE ;
 scalar_t__ DATA ;
 scalar_t__ IS_DNODE (TYPE_2__*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ is_cold_node (TYPE_2__*) ;

__attribute__((used)) static int __get_segment_type_4(struct f2fs_io_info *fio)
{
 if (fio->type == DATA) {
  struct inode *inode = fio->page->mapping->host;

  if (S_ISDIR(inode->i_mode))
   return CURSEG_HOT_DATA;
  else
   return CURSEG_COLD_DATA;
 } else {
  if (IS_DNODE(fio->page) && is_cold_node(fio->page))
   return CURSEG_WARM_NODE;
  else
   return CURSEG_COLD_NODE;
 }
}
