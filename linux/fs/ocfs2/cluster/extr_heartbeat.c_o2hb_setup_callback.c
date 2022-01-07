
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_callback_func {int hc_priority; int hc_type; int hc_magic; void* hc_data; int * hc_func; int hc_item; } ;
typedef int o2hb_cb_func ;
typedef enum o2hb_callback_type { ____Placeholder_o2hb_callback_type } o2hb_callback_type ;


 int INIT_LIST_HEAD (int *) ;
 int O2HB_CB_MAGIC ;

void o2hb_setup_callback(struct o2hb_callback_func *hc,
    enum o2hb_callback_type type,
    o2hb_cb_func *func,
    void *data,
    int priority)
{
 INIT_LIST_HEAD(&hc->hc_item);
 hc->hc_func = func;
 hc->hc_data = data;
 hc->hc_priority = priority;
 hc->hc_type = type;
 hc->hc_magic = O2HB_CB_MAGIC;
}
