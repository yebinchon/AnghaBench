
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int o2hb_unregister_callback (int *,int *) ;
 int o2net_hb_down ;
 int o2net_hb_up ;

void o2net_unregister_hb_callbacks(void)
{
 o2hb_unregister_callback(((void*)0), &o2net_hb_up);
 o2hb_unregister_callback(((void*)0), &o2net_hb_down);
}
