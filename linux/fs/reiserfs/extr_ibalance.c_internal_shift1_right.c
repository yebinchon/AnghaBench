
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int dummy; } ;
struct buffer_info {int dummy; } ;
struct buffer_head {int dummy; } ;


 int INTERNAL_SHIFT_FROM_S_TO_R ;
 int LAST_TO_FIRST ;
 int internal_define_dest_src_infos (int ,struct tree_balance*,int,struct buffer_info*,struct buffer_info*,int*,struct buffer_head**) ;
 int internal_insert_key (struct buffer_info*,int ,struct buffer_head*,int) ;
 int internal_move_pointers_items (struct buffer_info*,struct buffer_info*,int ,int,int) ;

__attribute__((used)) static void internal_shift1_right(struct tree_balance *tb,
      int h, int pointer_amount)
{
 struct buffer_info dest_bi, src_bi;
 struct buffer_head *cf;
 int d_key_position;

 internal_define_dest_src_infos(INTERNAL_SHIFT_FROM_S_TO_R, tb, h,
           &dest_bi, &src_bi, &d_key_position, &cf);


 if (pointer_amount > 0)
  internal_insert_key(&dest_bi, 0, cf, d_key_position);


 internal_move_pointers_items(&dest_bi, &src_bi, LAST_TO_FIRST,
         pointer_amount, 1);
}
