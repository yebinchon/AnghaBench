
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma_mem {int node; } ;
struct cma {int mem_head_lock; int mem_head; } ;


 int hlist_add_head (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cma_add_to_cma_mem_list(struct cma *cma, struct cma_mem *mem)
{
 spin_lock(&cma->mem_head_lock);
 hlist_add_head(&mem->node, &cma->mem_head);
 spin_unlock(&cma->mem_head_lock);
}
