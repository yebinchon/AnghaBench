
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int RADIX_TREE (int ,int ) ;
 int benchmark_delete (int *,unsigned long,unsigned long) ;
 int benchmark_insert (int *,unsigned long,unsigned long) ;
 long long benchmark_iter (int *,int) ;
 int benchmark_tagging (int *,unsigned long,unsigned long) ;
 int item_kill_tree (int *) ;
 int printv (int,char*,unsigned long,unsigned long,long long) ;
 int rcu_barrier () ;
 int tree ;

__attribute__((used)) static void benchmark_size(unsigned long size, unsigned long step)
{
 RADIX_TREE(tree, GFP_KERNEL);
 long long normal, tagged;

 benchmark_insert(&tree, size, step);
 benchmark_tagging(&tree, size, step);

 tagged = benchmark_iter(&tree, 1);
 normal = benchmark_iter(&tree, 0);

 printv(2, "Size: %8ld, step: %8ld, tagged iteration: %8lld ns\n",
  size, step, tagged);
 printv(2, "Size: %8ld, step: %8ld, normal iteration: %8lld ns\n",
  size, step, normal);

 benchmark_delete(&tree, size, step);

 item_kill_tree(&tree);
 rcu_barrier();
}
