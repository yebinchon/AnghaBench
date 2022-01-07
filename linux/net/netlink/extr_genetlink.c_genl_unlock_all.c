
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cb_lock ;
 int genl_unlock () ;
 int up_write (int *) ;

__attribute__((used)) static void genl_unlock_all(void)
{
 genl_unlock();
 up_write(&cb_lock);
}
