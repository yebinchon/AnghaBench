
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_transaction_handle {int t_blocks_allocated; int t_blocks_logged; } ;



__attribute__((used)) static inline int reiserfs_transaction_free_space(struct reiserfs_transaction_handle *th)
{
 return th->t_blocks_allocated - th->t_blocks_logged;
}
