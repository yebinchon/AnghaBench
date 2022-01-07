
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int srcu_read_lock (int *) ;
 int tomoyo_ss ;

__attribute__((used)) static inline int tomoyo_read_lock(void)
{
 return srcu_read_lock(&tomoyo_ss);
}
