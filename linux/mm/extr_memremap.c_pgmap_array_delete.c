
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int end; int start; } ;


 int GFP_KERNEL ;
 int PHYS_PFN (int ) ;
 int pgmap_array ;
 int synchronize_rcu () ;
 int xa_store_range (int *,int ,int ,int *,int ) ;

__attribute__((used)) static void pgmap_array_delete(struct resource *res)
{
 xa_store_range(&pgmap_array, PHYS_PFN(res->start), PHYS_PFN(res->end),
   ((void*)0), GFP_KERNEL);
 synchronize_rcu();
}
