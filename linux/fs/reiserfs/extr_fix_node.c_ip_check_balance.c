
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_node {int vn_nr_item; int vn_mode; } ;
struct tree_balance {int* insert_size; int* rnum; int* lnum; int lbytes; int rbytes; int s0num; int tb_sb; int tb_path; struct virtual_node* tb_vn; } ;
struct buffer_head {int dummy; } ;


 int B_FREE_SPACE (struct buffer_head*) ;

 int FLOW ;
 int LEFT_SHIFT_FLOW ;
 int LEFT_SHIFT_NO_FLOW ;
 int LR_SHIFT_FLOW ;
 int LR_SHIFT_NO_FLOW ;
 int MAX_NR_KEY (struct buffer_head*) ;
 int NOTHING_SHIFT_FLOW ;
 int NOTHING_SHIFT_NO_FLOW ;
 int NO_BALANCING_NEEDED ;

 int NO_FLOW ;
 struct buffer_head* PATH_H_PBUFFER (int ,int) ;

 int RFALSE (int,char*) ;
 int RIGHT_SHIFT_FLOW ;
 int RIGHT_SHIFT_NO_FLOW ;
 int SET_PAR_SHIFT_LEFT ;
 int SET_PAR_SHIFT_RIGHT ;
 int can_node_be_removed (int ,int,int,int,struct tree_balance*,int) ;
 int check_left (struct tree_balance*,int,int) ;
 int check_right (struct tree_balance*,int,int) ;
 int create_virtual_node (struct tree_balance*,int) ;
 int get_empty_nodes (struct tree_balance*,int) ;
 int get_lfree (struct tree_balance*,int) ;
 int get_num_ver (int ,struct tree_balance*,int,int,int,int,int,short*,int ) ;
 int get_parents (struct tree_balance*,int) ;
 int get_rfree (struct tree_balance*,int) ;
 scalar_t__ is_leaf_removable (struct tree_balance*) ;
 scalar_t__ is_left_neighbor_in_cache (struct tree_balance*,int) ;
 int reiserfs_panic (int ,char*,char*) ;
 int set_parameters (struct tree_balance*,int,int,int,int,short*,int,int) ;

__attribute__((used)) static int ip_check_balance(struct tree_balance *tb, int h)
{
 struct virtual_node *vn = tb->tb_vn;






 int levbytes;
 int ret;

 int lfree, sfree, rfree ;
 int nver, lnver, rnver, lrnver;
 short snum012[40] = { 0, };


 struct buffer_head *Sh;

 Sh = PATH_H_PBUFFER(tb->tb_path, h);
 levbytes = tb->insert_size[h];


 if (!Sh) {
  if (!h)
   reiserfs_panic(tb->tb_sb, "vs-8210",
           "S[0] can not be 0");
  switch (ret = get_empty_nodes(tb, h)) {

  case 130:
   set_parameters(tb, h, 0, 0, 1, ((void*)0), -1, -1);
   return NO_BALANCING_NEEDED;

  case 129:
  case 128:
   return ret;
  default:
   reiserfs_panic(tb->tb_sb, "vs-8215", "incorrect "
           "return value of get_empty_nodes");
  }
 }


 ret = get_parents(tb, h);
 if (ret != 130)
  return ret;

 sfree = B_FREE_SPACE(Sh);


 rfree = get_rfree(tb, h);
 lfree = get_lfree(tb, h);


 if (can_node_be_removed(vn->vn_mode, lfree, sfree, rfree, tb, h) ==
     NO_BALANCING_NEEDED)
  return NO_BALANCING_NEEDED;

 create_virtual_node(tb, h);







 check_left(tb, h, lfree);







 check_right(tb, h, rfree);





 if (h && (tb->rnum[h] + tb->lnum[h] >= vn->vn_nr_item + 1)) {
  int to_r;
  to_r =
      ((MAX_NR_KEY(Sh) << 1) + 2 - tb->lnum[h] - tb->rnum[h] +
       vn->vn_nr_item + 1) / 2 - (MAX_NR_KEY(Sh) + 1 -
      tb->rnum[h]);
  set_parameters(tb, h, vn->vn_nr_item + 1 - to_r, to_r, 0, ((void*)0),
          -1, -1);
  return 130;
 }





 RFALSE(h &&
        (tb->lnum[h] >= vn->vn_nr_item + 1 ||
  tb->rnum[h] >= vn->vn_nr_item + 1),
        "vs-8220: tree is not balanced on internal level");
 RFALSE(!h && ((tb->lnum[h] >= vn->vn_nr_item && (tb->lbytes == -1)) ||
        (tb->rnum[h] >= vn->vn_nr_item && (tb->rbytes == -1))),
        "vs-8225: tree is not balanced on leaf level");





 if (!h && is_leaf_removable(tb))
  return 130;
 if (sfree >= levbytes) {
  if (!h)
   tb->s0num = vn->vn_nr_item;
  set_parameters(tb, h, 0, 0, 1, ((void*)0), -1, -1);
  return NO_BALANCING_NEEDED;
 }

 {
  int lpar, rpar, nset, lset, rset, lrset;
  lpar = tb->lnum[h];
  rpar = tb->rnum[h];
  nset = 0;
  nver = get_num_ver(vn->vn_mode, tb, h,
       0, -1, h ? vn->vn_nr_item : 0, -1,
       snum012, 0);

  if (!h) {
   int nver1;





   nver1 = get_num_ver(vn->vn_mode, tb, h,
         0, -1, 0, -1,
         snum012 + 5, 1);
   if (nver > nver1)
    nset = 5, nver = nver1;
  }
  lset = 10;
  lnver = get_num_ver(vn->vn_mode, tb, h,
        lpar - ((h || tb->lbytes == -1) ? 0 : 1),
        -1, h ? vn->vn_nr_item : 0, -1,
        snum012 + 10, 0);
  if (!h) {
   int lnver1;

   lnver1 = get_num_ver(vn->vn_mode, tb, h,
          lpar -
          ((tb->lbytes != -1) ? 1 : 0),
          tb->lbytes, 0, -1,
          snum012 + 15, 1);
   if (lnver > lnver1)
    lset = 15, lnver = lnver1;
  }
  rset = 20;
  rnver = get_num_ver(vn->vn_mode, tb, h,
        0, -1,
        h ? (vn->vn_nr_item - rpar) : (rpar -
           ((tb->
             rbytes !=
             -1) ? 1 :
            0)), -1,
        snum012 + 20, 0);
  if (!h) {
   int rnver1;

   rnver1 = get_num_ver(vn->vn_mode, tb, h,
          0, -1,
          (rpar -
           ((tb->rbytes != -1) ? 1 : 0)),
          tb->rbytes,
          snum012 + 25, 1);

   if (rnver > rnver1)
    rset = 25, rnver = rnver1;
  }
  lrset = 30;
  lrnver = get_num_ver(vn->vn_mode, tb, h,
         lpar - ((h || tb->lbytes == -1) ? 0 : 1),
         -1,
         h ? (vn->vn_nr_item - rpar) : (rpar -
            ((tb->
              rbytes !=
              -1) ? 1 :
             0)), -1,
         snum012 + 30, 0);
  if (!h) {
   int lrnver1;

   lrnver1 = get_num_ver(vn->vn_mode, tb, h,
           lpar -
           ((tb->lbytes != -1) ? 1 : 0),
           tb->lbytes,
           (rpar -
            ((tb->rbytes != -1) ? 1 : 0)),
           tb->rbytes,
           snum012 + 35, 1);
   if (lrnver > lrnver1)
    lrset = 35, lrnver = lrnver1;
  }
  if (lrnver < lnver && lrnver < rnver) {
   RFALSE(h &&
          (tb->lnum[h] != 1 ||
    tb->rnum[h] != 1 ||
    lrnver != 1 || rnver != 2 || lnver != 2
    || h != 1), "vs-8230: bad h");
   if (lrset == 35)
    set_parameters(tb, h, tb->lnum[h], tb->rnum[h],
            lrnver, snum012 + lrset,
            tb->lbytes, tb->rbytes);
   else
    set_parameters(tb, h,
            tb->lnum[h] -
            ((tb->lbytes == -1) ? 0 : 1),
            tb->rnum[h] -
            ((tb->rbytes == -1) ? 0 : 1),
            lrnver, snum012 + lrset, -1, -1);

   return 130;
  }





  if (nver == lrnver) {
   set_parameters(tb, h, 0, 0, nver, snum012 + nset, -1,
           -1);
   return 130;
  }
  if (lnver < rnver) {
   SET_PAR_SHIFT_LEFT;
   return 130;
  }





  if (lnver > rnver) {
   SET_PAR_SHIFT_RIGHT;
   return 130;
  }





  if (is_left_neighbor_in_cache(tb, h)) {
   SET_PAR_SHIFT_LEFT;
   return 130;
  }





  SET_PAR_SHIFT_RIGHT;
  return 130;
 }
}
