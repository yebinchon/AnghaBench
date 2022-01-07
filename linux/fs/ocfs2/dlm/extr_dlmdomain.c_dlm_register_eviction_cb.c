
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_eviction_cb {int ec_item; } ;
struct dlm_ctxt {int dlm_eviction_callbacks; } ;


 int dlm_callback_sem ;
 int down_write (int *) ;
 int list_add_tail (int *,int *) ;
 int up_write (int *) ;

void dlm_register_eviction_cb(struct dlm_ctxt *dlm,
         struct dlm_eviction_cb *cb)
{
 down_write(&dlm_callback_sem);
 list_add_tail(&cb->ec_item, &dlm->dlm_eviction_callbacks);
 up_write(&dlm_callback_sem);
}
