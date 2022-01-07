
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {scalar_t__* R; scalar_t__* CFL; int* lkey; int tb_path; } ;
struct buffer_info {scalar_t__ bi_bh; } ;
struct buffer_head {int dummy; } ;


 int B_NR_ITEMS (scalar_t__) ;
 int LAST_TO_FIRST ;
 scalar_t__ PATH_H_PBUFFER (int ,int) ;
 int RFALSE (int,char*,scalar_t__,scalar_t__) ;
 int internal_define_dest_src_infos (int,struct tree_balance*,int,struct buffer_info*,struct buffer_info*,int*,struct buffer_head**) ;
 int internal_insert_key (struct buffer_info*,int ,struct buffer_head*,int) ;
 int internal_move_pointers_items (struct buffer_info*,struct buffer_info*,int ,int,int ) ;
 int replace_key (struct tree_balance*,struct buffer_head*,int,scalar_t__,int) ;

__attribute__((used)) static void internal_shift_right(



     int mode,
     struct tree_balance *tb,
     int h, int pointer_amount)
{
 struct buffer_info dest_bi, src_bi;
 struct buffer_head *cf;
 int d_key_position;
 int nr;

 internal_define_dest_src_infos(mode, tb, h, &dest_bi, &src_bi,
           &d_key_position, &cf);

 nr = B_NR_ITEMS(src_bi.bi_bh);

 if (pointer_amount > 0) {




  internal_insert_key(&dest_bi, 0, cf, d_key_position);
  if (nr == pointer_amount - 1) {
   RFALSE(src_bi.bi_bh != PATH_H_PBUFFER(tb->tb_path, h) ||
          dest_bi.bi_bh != tb->R[h],
          "src (%p) must be == tb->S[h](%p) when it disappears",
          src_bi.bi_bh, PATH_H_PBUFFER(tb->tb_path, h));

   if (tb->CFL[h])
    replace_key(tb, cf, d_key_position, tb->CFL[h],
         tb->lkey[h]);
  } else
   replace_key(tb, cf, d_key_position, src_bi.bi_bh,
        nr - pointer_amount);
 }


 internal_move_pointers_items(&dest_bi, &src_bi, LAST_TO_FIRST,
         pointer_amount, 0);
}
