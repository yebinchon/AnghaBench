
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {int domain_map; int spinlock; } ;


 int O2NM_MAX_NODES ;
 int assert_spin_locked (int *) ;
 int find_next_bit (int ,int,int) ;
 int printk (char*,...) ;

__attribute__((used)) static void __dlm_print_nodes(struct dlm_ctxt *dlm)
{
 int node = -1, num = 0;

 assert_spin_locked(&dlm->spinlock);

 printk("( ");
 while ((node = find_next_bit(dlm->domain_map, O2NM_MAX_NODES,
         node + 1)) < O2NM_MAX_NODES) {
  printk("%d ", node);
  ++num;
 }
 printk(") %u nodes\n", num);
}
