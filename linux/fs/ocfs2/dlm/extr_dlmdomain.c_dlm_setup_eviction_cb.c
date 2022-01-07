
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_eviction_cb {void* ec_data; int * ec_func; int ec_item; } ;
typedef int dlm_eviction_func ;


 int INIT_LIST_HEAD (int *) ;

void dlm_setup_eviction_cb(struct dlm_eviction_cb *cb,
      dlm_eviction_func *f,
      void *data)
{
 INIT_LIST_HEAD(&cb->ec_item);
 cb->ec_func = f;
 cb->ec_data = data;
}
