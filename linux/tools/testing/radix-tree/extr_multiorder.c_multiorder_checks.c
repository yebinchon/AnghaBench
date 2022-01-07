
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int array ;
 int multiorder_iteration (int *) ;
 int multiorder_iteration_race (int *) ;
 int multiorder_tagged_iteration (int *) ;
 int radix_tree_cpu_dead (int ) ;

void multiorder_checks(void)
{
 multiorder_iteration(&array);
 multiorder_tagged_iteration(&array);
 multiorder_iteration_race(&array);

 radix_tree_cpu_dead(0);
}
