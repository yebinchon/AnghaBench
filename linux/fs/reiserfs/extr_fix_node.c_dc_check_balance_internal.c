
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_node {int vn_nr_item; } ;
struct tree_balance {int* lnum; int* rnum; struct buffer_head** FR; struct buffer_head** FL; int tb_path; struct virtual_node* tb_vn; } ;
struct buffer_head {int dummy; } ;


 int B_NR_ITEMS (struct buffer_head*) ;
 int B_N_CHILD (struct buffer_head*,int) ;
 int CARRY_ON ;
 int DC_SIZE ;
 int KEY_SIZE ;
 int MAX_NR_KEY (struct buffer_head*) ;
 int MIN_NR_KEY (struct buffer_head*) ;
 int NO_BALANCING_NEEDED ;
 int PATH_H_B_ITEM_ORDER (int ,int) ;
 struct buffer_head* PATH_H_PBUFFER (int ,int) ;
 struct buffer_head* PATH_H_PPARENT (int ,int) ;
 int RFALSE (int,char*) ;
 int check_left (struct tree_balance*,int,int) ;
 int check_right (struct tree_balance*,int,int) ;
 int create_virtual_node (struct tree_balance*,int) ;
 int dc_size (int ) ;
 int get_lfree (struct tree_balance*,int) ;
 int get_parents (struct tree_balance*,int) ;
 int get_rfree (struct tree_balance*,int) ;
 scalar_t__ is_left_neighbor_in_cache (struct tree_balance*,int) ;
 int set_parameters (struct tree_balance*,int,int,int,int,int *,int,int) ;

__attribute__((used)) static int dc_check_balance_internal(struct tree_balance *tb, int h)
{
 struct virtual_node *vn = tb->tb_vn;





 struct buffer_head *Sh, *Fh;
 int ret;
 int lfree, rfree ;

 Sh = PATH_H_PBUFFER(tb->tb_path, h);
 Fh = PATH_H_PPARENT(tb->tb_path, h);







 create_virtual_node(tb, h);

 if (!Fh) {

  if (vn->vn_nr_item > 0) {
   set_parameters(tb, h, 0, 0, 1, ((void*)0), -1, -1);
   return NO_BALANCING_NEEDED;
  }





  set_parameters(tb, h, 0, 0, 0, ((void*)0), -1, -1);
  return CARRY_ON;
 }

 if ((ret = get_parents(tb, h)) != CARRY_ON)
  return ret;


 rfree = get_rfree(tb, h);
 lfree = get_lfree(tb, h);


 check_left(tb, h, lfree);
 check_right(tb, h, rfree);





 if (vn->vn_nr_item >= MIN_NR_KEY(Sh)) {




  if (vn->vn_nr_item == MIN_NR_KEY(Sh)) {

   if (tb->lnum[h] >= vn->vn_nr_item + 1) {
    int n;
    int order_L;

    order_L =
        ((n =
          PATH_H_B_ITEM_ORDER(tb->tb_path,
         h)) ==
         0) ? B_NR_ITEMS(tb->FL[h]) : n - 1;
    n = dc_size(B_N_CHILD(tb->FL[h], order_L)) /
        (DC_SIZE + KEY_SIZE);
    set_parameters(tb, h, -n - 1, 0, 0, ((void*)0), -1,
            -1);
    return CARRY_ON;
   }


   if (tb->rnum[h] >= vn->vn_nr_item + 1) {
    int n;
    int order_R;

    order_R =
        ((n =
          PATH_H_B_ITEM_ORDER(tb->tb_path,
         h)) ==
         B_NR_ITEMS(Fh)) ? 0 : n + 1;
    n = dc_size(B_N_CHILD(tb->FR[h], order_R)) /
        (DC_SIZE + KEY_SIZE);
    set_parameters(tb, h, 0, -n - 1, 0, ((void*)0), -1,
            -1);
    return CARRY_ON;
   }
  }





  if (tb->rnum[h] + tb->lnum[h] >= vn->vn_nr_item + 1) {
   int to_r;

   to_r =
       ((MAX_NR_KEY(Sh) << 1) + 2 - tb->lnum[h] -
        tb->rnum[h] + vn->vn_nr_item + 1) / 2 -
       (MAX_NR_KEY(Sh) + 1 - tb->rnum[h]);
   set_parameters(tb, h, vn->vn_nr_item + 1 - to_r, to_r,
           0, ((void*)0), -1, -1);
   return CARRY_ON;
  }


  set_parameters(tb, h, 0, 0, 1, ((void*)0), -1, -1);
  return NO_BALANCING_NEEDED;
 }






 if (tb->lnum[h] >= vn->vn_nr_item + 1)
  if (is_left_neighbor_in_cache(tb, h)
      || tb->rnum[h] < vn->vn_nr_item + 1 || !tb->FR[h]) {
   int n;
   int order_L;

   order_L =
       ((n =
         PATH_H_B_ITEM_ORDER(tb->tb_path,
        h)) ==
        0) ? B_NR_ITEMS(tb->FL[h]) : n - 1;
   n = dc_size(B_N_CHILD(tb->FL[h], order_L)) / (DC_SIZE +
              KEY_SIZE);
   set_parameters(tb, h, -n - 1, 0, 0, ((void*)0), -1, -1);
   return CARRY_ON;
  }


 if (tb->rnum[h] >= vn->vn_nr_item + 1) {
  int n;
  int order_R;

  order_R =
      ((n =
        PATH_H_B_ITEM_ORDER(tb->tb_path,
       h)) == B_NR_ITEMS(Fh)) ? 0 : (n + 1);
  n = dc_size(B_N_CHILD(tb->FR[h], order_R)) / (DC_SIZE +
             KEY_SIZE);
  set_parameters(tb, h, 0, -n - 1, 0, ((void*)0), -1, -1);
  return CARRY_ON;
 }


 if (tb->rnum[h] + tb->lnum[h] >= vn->vn_nr_item + 1) {
  int to_r;

  to_r =
      ((MAX_NR_KEY(Sh) << 1) + 2 - tb->lnum[h] - tb->rnum[h] +
       vn->vn_nr_item + 1) / 2 - (MAX_NR_KEY(Sh) + 1 -
      tb->rnum[h]);
  set_parameters(tb, h, vn->vn_nr_item + 1 - to_r, to_r, 0, ((void*)0),
          -1, -1);
  return CARRY_ON;
 }


 RFALSE(!tb->FL[h] && !tb->FR[h], "vs-8235: trying to borrow for root");


 if (is_left_neighbor_in_cache(tb, h) || !tb->FR[h]) {
  int from_l;

  from_l =
      (MAX_NR_KEY(Sh) + 1 - tb->lnum[h] + vn->vn_nr_item +
       1) / 2 - (vn->vn_nr_item + 1);
  set_parameters(tb, h, -from_l, 0, 1, ((void*)0), -1, -1);
  return CARRY_ON;
 }

 set_parameters(tb, h, 0,
         -((MAX_NR_KEY(Sh) + 1 - tb->rnum[h] + vn->vn_nr_item +
     1) / 2 - (vn->vn_nr_item + 1)), 1, ((void*)0), -1, -1);
 return CARRY_ON;
}
