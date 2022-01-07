
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int transaction_handle; } ;
struct buffer_head {int dummy; } ;


 int journal_mark_dirty (int ,struct buffer_head*) ;

inline void do_balance_mark_leaf_dirty(struct tree_balance *tb,
           struct buffer_head *bh, int flag)
{
 journal_mark_dirty(tb->transaction_handle, bh);
}
