
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct treepath {int dummy; } ;
struct tree_balance {int* lkey; int* rkey; int tb_sb; struct treepath* tb_path; } ;
struct cpu_key {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;
struct TYPE_6__ {int path_length; } ;


 int B_IS_IN_TREE (struct buffer_head*) ;
 int B_LEVEL (struct buffer_head*) ;
 int B_NR_ITEMS (struct buffer_head*) ;
 scalar_t__ B_N_CHILD_NUM (struct buffer_head*,int) ;
 int CARRY_ON ;
 int DISK_LEAF_NODE_LEVEL ;
 scalar_t__ FILESYSTEM_CHANGED_TB (struct tree_balance*) ;
 int FIRST_PATH_ELEMENT_OFFSET ;
 int INITIALIZE_PATH (TYPE_1__) ;
 int INT_MAX ;
 scalar_t__ IO_ERROR ;
 char LEFT_PARENTS ;
 int PATH_H_PATH_OFFSET (struct treepath*,int) ;
 struct buffer_head* PATH_OFFSET_PBUFFER (struct treepath*,int) ;
 int PATH_OFFSET_POSITION (struct treepath*,int) ;
 struct buffer_head* PATH_PLAST_BUFFER (TYPE_1__*) ;
 int REPEAT_SEARCH ;
 int RFALSE (int,char*,...) ;
 char RIGHT_PARENTS ;
 scalar_t__ SB_ROOT_BLOCK (int ) ;
 int __wait_on_buffer (struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_locked (struct buffer_head*) ;
 int decrement_key (struct cpu_key*) ;
 int get_bh (struct buffer_head*) ;
 int internal_key (struct buffer_head*,int) ;
 int le_key2cpu_key (struct cpu_key*,int ) ;
 int pathrelse (TYPE_1__*) ;
 int reiserfs_write_lock_nested (int ,int) ;
 int reiserfs_write_unlock_nested (int ) ;
 TYPE_1__ s_path_to_neighbor_father ;
 scalar_t__ search_by_key (int ,struct cpu_key*,TYPE_1__*,int) ;

__attribute__((used)) static int get_far_parent(struct tree_balance *tb,
     int h,
     struct buffer_head **pfather,
     struct buffer_head **pcom_father, char c_lr_par)
{
 struct buffer_head *parent;
 INITIALIZE_PATH(s_path_to_neighbor_father);
 struct treepath *path = tb->tb_path;
 struct cpu_key s_lr_father_key;
 int counter,
     position = INT_MAX,
     first_last_position = 0,
     path_offset = PATH_H_PATH_OFFSET(path, h);






 counter = path_offset;

 RFALSE(counter < FIRST_PATH_ELEMENT_OFFSET,
        "PAP-8180: invalid path length");

 for (; counter > FIRST_PATH_ELEMENT_OFFSET; counter--) {




  if (!B_IS_IN_TREE
      (parent = PATH_OFFSET_PBUFFER(path, counter - 1)))
   return REPEAT_SEARCH;


  if ((position =
       PATH_OFFSET_POSITION(path,
       counter - 1)) >
      B_NR_ITEMS(parent))
   return REPEAT_SEARCH;





  if (B_N_CHILD_NUM(parent, position) !=
      PATH_OFFSET_PBUFFER(path, counter)->b_blocknr)
   return REPEAT_SEARCH;





  if (c_lr_par == RIGHT_PARENTS)
   first_last_position = B_NR_ITEMS(parent);
  if (position != first_last_position) {
   *pcom_father = parent;
   get_bh(*pcom_father);

   break;
  }
 }


 if (counter == FIRST_PATH_ELEMENT_OFFSET) {




  if (PATH_OFFSET_PBUFFER
      (tb->tb_path,
       FIRST_PATH_ELEMENT_OFFSET)->b_blocknr ==
      SB_ROOT_BLOCK(tb->tb_sb)) {
   *pfather = *pcom_father = ((void*)0);
   return CARRY_ON;
  }
  return REPEAT_SEARCH;
 }

 RFALSE(B_LEVEL(*pcom_father) <= DISK_LEAF_NODE_LEVEL,
        "PAP-8185: (%b %z) level too small",
        *pcom_father, *pcom_father);



 if (buffer_locked(*pcom_father)) {


  int depth = reiserfs_write_unlock_nested(tb->tb_sb);
  __wait_on_buffer(*pcom_father);
  reiserfs_write_lock_nested(tb->tb_sb, depth);
  if (FILESYSTEM_CHANGED_TB(tb)) {
   brelse(*pcom_father);
   return REPEAT_SEARCH;
  }
 }
 le_key2cpu_key(&s_lr_father_key,
         internal_key(*pcom_father,
          (c_lr_par ==
           LEFT_PARENTS) ? (tb->lkey[h - 1] =
       position -
       1) : (tb->rkey[h -
            1] =
             position)));

 if (c_lr_par == LEFT_PARENTS)
  decrement_key(&s_lr_father_key);

 if (search_by_key
     (tb->tb_sb, &s_lr_father_key, &s_path_to_neighbor_father,
      h + 1) == IO_ERROR)

  return IO_ERROR;

 if (FILESYSTEM_CHANGED_TB(tb)) {
  pathrelse(&s_path_to_neighbor_father);
  brelse(*pcom_father);
  return REPEAT_SEARCH;
 }

 *pfather = PATH_PLAST_BUFFER(&s_path_to_neighbor_father);

 RFALSE(B_LEVEL(*pfather) != h + 1,
        "PAP-8190: (%b %z) level too small", *pfather, *pfather);
 RFALSE(s_path_to_neighbor_father.path_length <
        FIRST_PATH_ELEMENT_OFFSET, "PAP-8192: path length is too small");

 s_path_to_neighbor_father.path_length--;
 pathrelse(&s_path_to_neighbor_father);
 return CARRY_ON;
}
