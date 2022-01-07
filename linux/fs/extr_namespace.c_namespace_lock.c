
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int down_write (int *) ;
 int namespace_sem ;

__attribute__((used)) static inline void namespace_lock(void)
{
 down_write(&namespace_sem);
}
