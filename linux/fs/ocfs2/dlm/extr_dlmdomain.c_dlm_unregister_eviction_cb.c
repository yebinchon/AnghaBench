
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_eviction_cb {int ec_item; } ;


 int dlm_callback_sem ;
 int down_write (int *) ;
 int list_del_init (int *) ;
 int up_write (int *) ;

void dlm_unregister_eviction_cb(struct dlm_eviction_cb *cb)
{
 down_write(&dlm_callback_sem);
 list_del_init(&cb->ec_item);
 up_write(&dlm_callback_sem);
}
