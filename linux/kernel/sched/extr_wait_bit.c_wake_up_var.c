
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __var_waitqueue (void*) ;
 int __wake_up_bit (int ,void*,int) ;

void wake_up_var(void *var)
{
 __wake_up_bit(__var_waitqueue(var), var, -1);
}
