
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int access_lock ;
 int mutex_lock (int *) ;

__attribute__((used)) static inline void trace_access_lock(int cpu)
{
 (void)cpu;
 mutex_lock(&access_lock);
}
