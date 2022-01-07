
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_node {int vn_nr_item; struct virtual_item* vn_vi; } ;
struct virtual_item {int vi_item_len; scalar_t__ vi_index; int vi_ih; } ;
struct tree_balance {scalar_t__* insert_size; int tb_sb; int tb_path; struct virtual_node* tb_vn; } ;


 int DC_SIZE ;
 int IH_SIZE ;
 int KEY_SIZE ;
 int MAX_CHILD_SIZE (int ) ;
 int M_INSERT ;
 int M_PASTE ;
 int PATH_H_PBUFFER (int ,int) ;
 int RFALSE (int,char*,...) ;
 scalar_t__ TYPE_DIRENTRY ;
 scalar_t__ TYPE_INDIRECT ;
 int is_direct_le_ih (int ) ;
 int op_check_left (struct virtual_item*,int,int,int) ;
 scalar_t__ op_part_size (struct virtual_item*,int,int) ;
 short op_unit_num (struct virtual_item*) ;
 int reiserfs_warning (int ,char*,char*) ;

__attribute__((used)) static int get_num_ver(int mode, struct tree_balance *tb, int h,
         int from, int from_bytes,
         int to, int to_bytes, short *snum012, int flow)
{
 int i;
 int units;
 struct virtual_node *vn = tb->tb_vn;
 int total_node_size, max_node_size, current_item_size;
 int needed_nodes;


 int start_item;


 int end_item;





 int start_bytes;





 int end_bytes;





 int split_item_positions[2];

 split_item_positions[0] = -1;
 split_item_positions[1] = -1;







 RFALSE(tb->insert_size[h] < 0 || (mode != M_INSERT && mode != M_PASTE),
        "vs-8100: insert_size < 0 in overflow");

 max_node_size = MAX_CHILD_SIZE(PATH_H_PBUFFER(tb->tb_path, h));





 snum012[3] = -1;
 snum012[4] = -1;


 if (h > 0) {
  i = ((to - from) * (KEY_SIZE + DC_SIZE) + DC_SIZE);
  if (i == max_node_size)
   return 1;
  return (i / max_node_size + 1);
 }


 needed_nodes = 1;
 total_node_size = 0;


 start_item = from;

 start_bytes = ((from_bytes != -1) ? from_bytes : 0);


 end_item = vn->vn_nr_item - to - 1;

 end_bytes = (to_bytes != -1) ? to_bytes : 0;







 for (i = start_item; i <= end_item; i++) {
  struct virtual_item *vi = vn->vn_vi + i;
  int skip_from_end = ((i == end_item) ? end_bytes : 0);

  RFALSE(needed_nodes > 3, "vs-8105: too many nodes are needed");


  current_item_size = vi->vi_item_len;





  current_item_size -=
      op_part_size(vi, 0 , start_bytes);


  current_item_size -=
      op_part_size(vi, 1 , skip_from_end);


  if (total_node_size + current_item_size <= max_node_size) {
   snum012[needed_nodes - 1]++;
   total_node_size += current_item_size;
   start_bytes = 0;
   continue;
  }





  if (current_item_size > max_node_size) {
   RFALSE(is_direct_le_ih(vi->vi_ih),
          "vs-8110: "
          "direct item length is %d. It can not be longer than %d",
          current_item_size, max_node_size);

   flow = 1;
  }


  if (!flow) {
   needed_nodes++;
   i--;
   total_node_size = 0;
   continue;
  }





  {
   int free_space;

   free_space = max_node_size - total_node_size - IH_SIZE;
   units =
       op_check_left(vi, free_space, start_bytes,
       skip_from_end);




   if (units == -1) {
    needed_nodes++, i--, total_node_size = 0;
    continue;
   }
  }


  start_bytes += units;
  snum012[needed_nodes - 1 + 3] = units;

  if (needed_nodes > 2)
   reiserfs_warning(tb->tb_sb, "vs-8111",
      "split_item_position is out of range");
  snum012[needed_nodes - 1]++;
  split_item_positions[needed_nodes - 1] = i;
  needed_nodes++;

  start_item = i;
  i--;
  total_node_size = 0;
 }






 if (snum012[4] > 0) {
  int split_item_num;
  int bytes_to_r, bytes_to_l;
  int bytes_to_S1new;

  split_item_num = split_item_positions[1];
  bytes_to_l =
      ((from == split_item_num
        && from_bytes != -1) ? from_bytes : 0);
  bytes_to_r =
      ((end_item == split_item_num
        && end_bytes != -1) ? end_bytes : 0);
  bytes_to_S1new =
      ((split_item_positions[0] ==
        split_item_positions[1]) ? snum012[3] : 0);


  snum012[4] =
      op_unit_num(&vn->vn_vi[split_item_num]) - snum012[4] -
      bytes_to_r - bytes_to_l - bytes_to_S1new;

  if (vn->vn_vi[split_item_num].vi_index != TYPE_DIRENTRY &&
      vn->vn_vi[split_item_num].vi_index != TYPE_INDIRECT)
   reiserfs_warning(tb->tb_sb, "vs-8115",
      "not directory or indirect item");
 }


 if (snum012[3] > 0) {
  int split_item_num;
  int bytes_to_r, bytes_to_l;
  int bytes_to_S2new;

  split_item_num = split_item_positions[0];
  bytes_to_l =
      ((from == split_item_num
        && from_bytes != -1) ? from_bytes : 0);
  bytes_to_r =
      ((end_item == split_item_num
        && end_bytes != -1) ? end_bytes : 0);
  bytes_to_S2new =
      ((split_item_positions[0] == split_item_positions[1]
        && snum012[4] != -1) ? snum012[4] : 0);


  snum012[3] =
      op_unit_num(&vn->vn_vi[split_item_num]) - snum012[3] -
      bytes_to_r - bytes_to_l - bytes_to_S2new;
 }

 return needed_nodes;
}
