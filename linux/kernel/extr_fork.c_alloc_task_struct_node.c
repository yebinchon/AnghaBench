
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int GFP_KERNEL ;
 struct task_struct* kmem_cache_alloc_node (int ,int ,int) ;
 int task_struct_cachep ;

__attribute__((used)) static inline struct task_struct *alloc_task_struct_node(int node)
{
 return kmem_cache_alloc_node(task_struct_cachep, GFP_KERNEL, node);
}
