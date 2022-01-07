
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_info {int bi_bh; } ;


 int B_NR_ITEMS (int ) ;
 int FIRST_TO_LAST ;
 int internal_copy_pointers_items (struct buffer_info*,int ,int,int) ;
 int internal_delete_pointers_items (struct buffer_info*,int,int,int) ;

__attribute__((used)) static void internal_move_pointers_items(struct buffer_info *dest_bi,
      struct buffer_info *src_bi,
      int last_first, int cpy_num,
      int del_par)
{
 int first_pointer;
 int first_item;

 internal_copy_pointers_items(dest_bi, src_bi->bi_bh, last_first,
         cpy_num);

 if (last_first == FIRST_TO_LAST) {
  first_pointer = 0;
  first_item = 0;




  internal_delete_pointers_items(src_bi, first_pointer,
            first_item, cpy_num - del_par);
 } else {
  int i, j;

  i = (cpy_num - del_par ==
       (j =
        B_NR_ITEMS(src_bi->bi_bh)) + 1) ? 0 : j - cpy_num +
      del_par;

  internal_delete_pointers_items(src_bi,
            j + 1 - cpy_num + del_par, i,
            cpy_num - del_par);
 }
}
