
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tree_balance {int key; int tb_path; int transaction_handle; } ;
struct TYPE_3__ {int formatted_node; int block; int key; int * inode; int path; int th; } ;
typedef TYPE_1__ reiserfs_blocknr_hint_t ;
typedef int b_blocknr_t ;


 int reiserfs_allocate_blocknrs (TYPE_1__*,int *,int,int ) ;

__attribute__((used)) static inline int reiserfs_new_form_blocknrs(struct tree_balance *tb,
          b_blocknr_t * new_blocknrs,
          int amount_needed)
{
 reiserfs_blocknr_hint_t hint = {
  .th = tb->transaction_handle,
  .path = tb->tb_path,
  .inode = ((void*)0),
  .key = tb->key,
  .block = 0,
  .formatted_node = 1
 };
 return reiserfs_allocate_blocknrs(&hint, new_blocknrs, amount_needed,
       0);
}
