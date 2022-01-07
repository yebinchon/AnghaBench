
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cb_lock ;
 int down_write (int *) ;
 int genl_lock () ;

__attribute__((used)) static void genl_lock_all(void)
{
 down_write(&cb_lock);
 genl_lock();
}
