
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int umhelper_sem ;
 int up_read (int *) ;

void usermodehelper_read_unlock(void)
{
 up_read(&umhelper_sem);
}
