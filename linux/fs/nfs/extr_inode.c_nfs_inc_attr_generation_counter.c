
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long atomic_long_inc_return (int *) ;
 int nfs_attr_generation_counter ;

unsigned long nfs_inc_attr_generation_counter(void)
{
 return atomic_long_inc_return(&nfs_attr_generation_counter);
}
