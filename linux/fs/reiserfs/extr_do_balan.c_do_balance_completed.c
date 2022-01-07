
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree_balance {int tb_sb; } ;
struct TYPE_2__ {int s_do_balance; int * cur_tb; } ;


 TYPE_1__* REISERFS_SB (int ) ;
 int check_internal_levels (struct tree_balance*) ;
 int check_leaf_level (struct tree_balance*) ;
 int free_thrown (struct tree_balance*) ;
 int unfix_nodes (struct tree_balance*) ;

__attribute__((used)) static inline void do_balance_completed(struct tree_balance *tb)
{
 REISERFS_SB(tb->tb_sb)->s_do_balance++;


 unfix_nodes(tb);

 free_thrown(tb);
}
