
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int tb_path; int ** FR; struct buffer_head** R; int ** FL; struct buffer_head** L; } ;
struct buffer_info {struct buffer_head* bi_bh; void* bi_position; int * bi_parent; struct tree_balance* tb; } ;
struct buffer_head {int dummy; } ;


 int FIRST_TO_LAST ;
 int LAST_TO_FIRST ;





 void* PATH_H_B_ITEM_ORDER (int ,int ) ;
 void* PATH_H_PPARENT (int ,int ) ;
 void* PATH_PLAST_BUFFER (int ) ;
 int RFALSE (int,char*,int,struct buffer_head*,struct buffer_head*) ;
 void* get_left_neighbor_position (struct tree_balance*,int ) ;
 void* get_right_neighbor_position (struct tree_balance*,int ) ;
 int memset (struct buffer_info*,int ,int) ;
 int reiserfs_panic (int ,char*,char*,int) ;
 int sb_from_bi (struct buffer_info*) ;

__attribute__((used)) static void leaf_define_dest_src_infos(int shift_mode, struct tree_balance *tb,
           struct buffer_info *dest_bi,
           struct buffer_info *src_bi,
           int *first_last,
           struct buffer_head *Snew)
{
 memset(dest_bi, 0, sizeof(struct buffer_info));
 memset(src_bi, 0, sizeof(struct buffer_info));


 switch (shift_mode) {
 case 130:
  src_bi->tb = tb;
  src_bi->bi_bh = PATH_PLAST_BUFFER(tb->tb_path);
  src_bi->bi_parent = PATH_H_PPARENT(tb->tb_path, 0);


  src_bi->bi_position = PATH_H_B_ITEM_ORDER(tb->tb_path, 0);
  dest_bi->tb = tb;
  dest_bi->bi_bh = tb->L[0];
  dest_bi->bi_parent = tb->FL[0];
  dest_bi->bi_position = get_left_neighbor_position(tb, 0);
  *first_last = FIRST_TO_LAST;
  break;

 case 129:
  src_bi->tb = tb;
  src_bi->bi_bh = PATH_PLAST_BUFFER(tb->tb_path);
  src_bi->bi_parent = PATH_H_PPARENT(tb->tb_path, 0);
  src_bi->bi_position = PATH_H_B_ITEM_ORDER(tb->tb_path, 0);
  dest_bi->tb = tb;
  dest_bi->bi_bh = tb->R[0];
  dest_bi->bi_parent = tb->FR[0];
  dest_bi->bi_position = get_right_neighbor_position(tb, 0);
  *first_last = LAST_TO_FIRST;
  break;

 case 131:
  src_bi->tb = tb;
  src_bi->bi_bh = tb->R[0];
  src_bi->bi_parent = tb->FR[0];
  src_bi->bi_position = get_right_neighbor_position(tb, 0);
  dest_bi->tb = tb;
  dest_bi->bi_bh = tb->L[0];
  dest_bi->bi_parent = tb->FL[0];
  dest_bi->bi_position = get_left_neighbor_position(tb, 0);
  *first_last = FIRST_TO_LAST;
  break;

 case 132:
  src_bi->tb = tb;
  src_bi->bi_bh = tb->L[0];
  src_bi->bi_parent = tb->FL[0];
  src_bi->bi_position = get_left_neighbor_position(tb, 0);
  dest_bi->tb = tb;
  dest_bi->bi_bh = tb->R[0];
  dest_bi->bi_parent = tb->FR[0];
  dest_bi->bi_position = get_right_neighbor_position(tb, 0);
  *first_last = LAST_TO_FIRST;
  break;

 case 128:
  src_bi->tb = tb;
  src_bi->bi_bh = PATH_PLAST_BUFFER(tb->tb_path);
  src_bi->bi_parent = PATH_H_PPARENT(tb->tb_path, 0);
  src_bi->bi_position = PATH_H_B_ITEM_ORDER(tb->tb_path, 0);
  dest_bi->tb = tb;
  dest_bi->bi_bh = Snew;
  dest_bi->bi_parent = ((void*)0);
  dest_bi->bi_position = 0;
  *first_last = LAST_TO_FIRST;
  break;

 default:
  reiserfs_panic(sb_from_bi(src_bi), "vs-10250",
          "shift type is unknown (%d)", shift_mode);
 }
 RFALSE(!src_bi->bi_bh || !dest_bi->bi_bh,
        "vs-10260: mode==%d, source (%p) or dest (%p) buffer is initialized incorrectly",
        shift_mode, src_bi->bi_bh, dest_bi->bi_bh);
}
