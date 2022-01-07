
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int* lkey; int* rkey; int tb_sb; void** FR; void** R; int tb_path; void** FL; void** L; struct buffer_head** CFR; struct buffer_head** CFL; } ;
struct buffer_info {void* bi_position; void* bi_parent; void* bi_bh; struct tree_balance* tb; } ;
struct buffer_head {int dummy; } ;
 void* PATH_H_PBUFFER (int ,int) ;
 void* PATH_H_POSITION (int ,int) ;
 void* PATH_H_PPARENT (int ,int) ;
 void* get_left_neighbor_position (struct tree_balance*,int) ;
 void* get_right_neighbor_position (struct tree_balance*,int) ;
 int memset (struct buffer_info*,int ,int) ;
 int reiserfs_panic (int ,char*,char*,int) ;

__attribute__((used)) static void internal_define_dest_src_infos(int shift_mode,
        struct tree_balance *tb,
        int h,
        struct buffer_info *dest_bi,
        struct buffer_info *src_bi,
        int *d_key, struct buffer_head **cf)
{
 memset(dest_bi, 0, sizeof(struct buffer_info));
 memset(src_bi, 0, sizeof(struct buffer_info));

 switch (shift_mode) {


 case 129:
  src_bi->tb = tb;
  src_bi->bi_bh = PATH_H_PBUFFER(tb->tb_path, h);
  src_bi->bi_parent = PATH_H_PPARENT(tb->tb_path, h);
  src_bi->bi_position = PATH_H_POSITION(tb->tb_path, h + 1);
  dest_bi->tb = tb;
  dest_bi->bi_bh = tb->L[h];
  dest_bi->bi_parent = tb->FL[h];
  dest_bi->bi_position = get_left_neighbor_position(tb, h);
  *d_key = tb->lkey[h];
  *cf = tb->CFL[h];
  break;
 case 131:
  src_bi->tb = tb;
  src_bi->bi_bh = tb->L[h];
  src_bi->bi_parent = tb->FL[h];
  src_bi->bi_position = get_left_neighbor_position(tb, h);
  dest_bi->tb = tb;
  dest_bi->bi_bh = PATH_H_PBUFFER(tb->tb_path, h);
  dest_bi->bi_parent = PATH_H_PPARENT(tb->tb_path, h);

  dest_bi->bi_position = PATH_H_POSITION(tb->tb_path, h + 1);
  *d_key = tb->lkey[h];
  *cf = tb->CFL[h];
  break;


 case 130:
  src_bi->tb = tb;
  src_bi->bi_bh = tb->R[h];
  src_bi->bi_parent = tb->FR[h];
  src_bi->bi_position = get_right_neighbor_position(tb, h);
  dest_bi->tb = tb;
  dest_bi->bi_bh = PATH_H_PBUFFER(tb->tb_path, h);
  dest_bi->bi_parent = PATH_H_PPARENT(tb->tb_path, h);
  dest_bi->bi_position = PATH_H_POSITION(tb->tb_path, h + 1);
  *d_key = tb->rkey[h];
  *cf = tb->CFR[h];
  break;

 case 128:
  src_bi->tb = tb;
  src_bi->bi_bh = PATH_H_PBUFFER(tb->tb_path, h);
  src_bi->bi_parent = PATH_H_PPARENT(tb->tb_path, h);
  src_bi->bi_position = PATH_H_POSITION(tb->tb_path, h + 1);
  dest_bi->tb = tb;
  dest_bi->bi_bh = tb->R[h];
  dest_bi->bi_parent = tb->FR[h];
  dest_bi->bi_position = get_right_neighbor_position(tb, h);
  *d_key = tb->rkey[h];
  *cf = tb->CFR[h];
  break;

 case 134:
  dest_bi->tb = tb;
  dest_bi->bi_bh = tb->L[h];
  dest_bi->bi_parent = tb->FL[h];
  dest_bi->bi_position = get_left_neighbor_position(tb, h);
  break;

 case 132:
  dest_bi->tb = tb;
  dest_bi->bi_bh = PATH_H_PBUFFER(tb->tb_path, h);
  dest_bi->bi_parent = PATH_H_PPARENT(tb->tb_path, h);
  dest_bi->bi_position = PATH_H_POSITION(tb->tb_path, h + 1);
  break;

 case 133:
  dest_bi->tb = tb;
  dest_bi->bi_bh = tb->R[h];
  dest_bi->bi_parent = tb->FR[h];
  dest_bi->bi_position = get_right_neighbor_position(tb, h);
  break;

 default:
  reiserfs_panic(tb->tb_sb, "ibalance-1",
          "shift type is unknown (%d)",
          shift_mode);
 }
}
