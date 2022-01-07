
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ip_set_type_mutex ;
 int mutex_lock (int *) ;

__attribute__((used)) static inline void
ip_set_type_lock(void)
{
 mutex_lock(&ip_set_type_mutex);
}
