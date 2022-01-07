
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_node {int vn_nr_item; int * vn_vi; } ;
struct tree_balance {int* lnum; int lbytes; int* rnum; int rbytes; struct virtual_node* tb_vn; } ;


 int op_unit_num (int *) ;
 int set_parameters (struct tree_balance*,int ,int,int,int ,int *,int,int) ;

__attribute__((used)) static int is_leaf_removable(struct tree_balance *tb)
{
 struct virtual_node *vn = tb->tb_vn;
 int to_left, to_right;
 int size;
 int remain_items;





 to_left = tb->lnum[0] - ((tb->lbytes != -1) ? 1 : 0);
 to_right = tb->rnum[0] - ((tb->rbytes != -1) ? 1 : 0);
 remain_items = vn->vn_nr_item;


 remain_items -= (to_left + to_right);


 if (remain_items < 1) {
  set_parameters(tb, 0, to_left, vn->vn_nr_item - to_left, 0,
          ((void*)0), -1, -1);
  return 1;
 }


 if (remain_items > 1 || tb->lbytes == -1 || tb->rbytes == -1)
  return 0;




 size = op_unit_num(&vn->vn_vi[to_left]);

 if (tb->lbytes + tb->rbytes >= size) {
  set_parameters(tb, 0, to_left + 1, to_right + 1, 0, ((void*)0),
          tb->lbytes, -1);
  return 1;
 }

 return 0;
}
