
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {struct super_block* tb_sb; } ;
struct super_block {int dummy; } ;



__attribute__((used)) static inline struct super_block *sb_from_tb(struct tree_balance *tb)
{
 return tb ? tb->tb_sb : ((void*)0);
}
