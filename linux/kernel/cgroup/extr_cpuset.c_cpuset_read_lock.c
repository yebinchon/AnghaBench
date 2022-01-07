
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpuset_rwsem ;
 int percpu_down_read (int *) ;

void cpuset_read_lock(void)
{
 percpu_down_read(&cpuset_rwsem);
}
