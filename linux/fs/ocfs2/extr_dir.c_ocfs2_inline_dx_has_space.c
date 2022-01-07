
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_dx_entry_list {int de_count; int de_num_used; } ;
struct ocfs2_dx_root_block {struct ocfs2_dx_entry_list dr_entries; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int ENOSPC ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static int ocfs2_inline_dx_has_space(struct buffer_head *dx_root_bh)
{
 struct ocfs2_dx_root_block *dx_root;
 struct ocfs2_dx_entry_list *entry_list;

 dx_root = (struct ocfs2_dx_root_block *) dx_root_bh->b_data;
 entry_list = &dx_root->dr_entries;

 if (le16_to_cpu(entry_list->de_num_used) >=
     le16_to_cpu(entry_list->de_count))
  return -ENOSPC;

 return 0;
}
