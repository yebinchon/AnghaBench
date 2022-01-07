
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int dummy; } ;
struct buffer_info {scalar_t__ bi_position; int bi_bh; int bi_parent; } ;
struct buffer_head {int dummy; } ;


 int B_NR_ITEMS (int ) ;
 int FIRST_TO_LAST ;
 int internal_define_dest_src_infos (int,struct tree_balance*,int,struct buffer_info*,struct buffer_info*,int*,struct buffer_head**) ;
 int internal_insert_key (struct buffer_info*,int,struct buffer_head*,int) ;
 int internal_move_pointers_items (struct buffer_info*,struct buffer_info*,int ,int,int ) ;
 int replace_key (struct tree_balance*,struct buffer_head*,int,int ,int) ;

__attribute__((used)) static void internal_shift_left(



    int mode,
    struct tree_balance *tb,
    int h, int pointer_amount)
{
 struct buffer_info dest_bi, src_bi;
 struct buffer_head *cf;
 int d_key_position;

 internal_define_dest_src_infos(mode, tb, h, &dest_bi, &src_bi,
           &d_key_position, &cf);



 if (pointer_amount) {




  internal_insert_key(&dest_bi, B_NR_ITEMS(dest_bi.bi_bh), cf,
        d_key_position);

  if (B_NR_ITEMS(src_bi.bi_bh) == pointer_amount - 1) {
   if (src_bi.bi_position == 0)
    replace_key(tb, cf, d_key_position,
         src_bi.
         bi_parent , 0);
  } else
   replace_key(tb, cf, d_key_position, src_bi.bi_bh,
        pointer_amount - 1);
 }

 internal_move_pointers_items(&dest_bi, &src_bi, FIRST_TO_LAST,
         pointer_amount, 0);

}
