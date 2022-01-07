
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_node {size_t vn_pos_in_item; int vn_mode; } ;
struct virtual_item {scalar_t__ vi_item_len; int vi_ih; scalar_t__ vi_item; int vi_index; struct direntry_uarea* vi_uarea; } ;
struct reiserfs_de_head {int dummy; } ;
struct direntry_uarea {int entry_count; int* entry_sizes; int flags; } ;


 int BUG_ON (int) ;
 int DEH_SIZE ;
 int DIRENTRY_VI_FIRST_DIRENTRY_ITEM ;
 scalar_t__ DOT_OFFSET ;
 scalar_t__ IH_SIZE ;
 int M_CUT ;
 int M_PASTE ;
 int TYPE_DIRENTRY ;
 int deh_location (struct reiserfs_de_head*) ;
 int ih_entry_count (int ) ;
 int ih_item_len (int ) ;
 scalar_t__ le_ih_k_offset (int ) ;
 int old_entry_num (int,int,size_t,int ) ;
 int reiserfs_panic (int *,char*,char*,int ,int) ;

__attribute__((used)) static int direntry_create_vi(struct virtual_node *vn,
         struct virtual_item *vi,
         int is_affected, int insert_size)
{
 struct direntry_uarea *dir_u = vi->vi_uarea;
 int i, j;
 int size = sizeof(struct direntry_uarea);
 struct reiserfs_de_head *deh;

 vi->vi_index = TYPE_DIRENTRY;

 BUG_ON(!(vi->vi_ih) || !vi->vi_item);

 dir_u->flags = 0;
 if (le_ih_k_offset(vi->vi_ih) == DOT_OFFSET)
  dir_u->flags |= DIRENTRY_VI_FIRST_DIRENTRY_ITEM;

 deh = (struct reiserfs_de_head *)(vi->vi_item);


 dir_u->entry_count = ih_entry_count(vi->vi_ih) +
     ((is_affected) ? ((vn->vn_mode == M_CUT) ? -1 :
         (vn->vn_mode == M_PASTE ? 1 : 0)) : 0);

 for (i = 0; i < dir_u->entry_count; i++) {
  j = old_entry_num(is_affected, i, vn->vn_pos_in_item,
      vn->vn_mode);
  dir_u->entry_sizes[i] =
      (j ? deh_location(&deh[j - 1]) : ih_item_len(vi->vi_ih)) -
      deh_location(&deh[j]) + DEH_SIZE;
 }

 size += (dir_u->entry_count * sizeof(short));


 if (is_affected && vn->vn_mode == M_PASTE)
  dir_u->entry_sizes[vn->vn_pos_in_item] = insert_size;
 return size;

}
