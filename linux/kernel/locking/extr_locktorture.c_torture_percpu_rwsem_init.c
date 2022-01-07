
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int ) ;
 int pcpu_rwsem ;
 int percpu_init_rwsem (int *) ;

void torture_percpu_rwsem_init(void)
{
 BUG_ON(percpu_init_rwsem(&pcpu_rwsem));
}
