
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long atomic_long_read (int *) ;
 int nfs_attr_generation_counter ;

__attribute__((used)) static unsigned long nfs_read_attr_generation_counter(void)
{
 return atomic_long_read(&nfs_attr_generation_counter);
}
