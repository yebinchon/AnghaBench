
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct func_node {int dummy; } ;


 scalar_t__ func_partition_bb_head (struct func_node*) ;
 int func_partition_bb_tail (struct func_node*) ;

__attribute__((used)) static bool func_partition_bb(struct func_node *func)
{
 if (func_partition_bb_head(func))
  return 1;

 func_partition_bb_tail(func);

 return 0;
}
