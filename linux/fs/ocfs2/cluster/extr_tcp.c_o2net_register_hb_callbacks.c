
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O2HB_NODE_DOWN_CB ;
 int O2HB_NODE_UP_CB ;
 int O2NET_HB_PRI ;
 int o2hb_register_callback (int *,int *) ;
 int o2hb_setup_callback (int *,int ,int ,int *,int ) ;
 int o2net_hb_down ;
 int o2net_hb_node_down_cb ;
 int o2net_hb_node_up_cb ;
 int o2net_hb_up ;
 int o2net_unregister_hb_callbacks () ;

int o2net_register_hb_callbacks(void)
{
 int ret;

 o2hb_setup_callback(&o2net_hb_down, O2HB_NODE_DOWN_CB,
       o2net_hb_node_down_cb, ((void*)0), O2NET_HB_PRI);
 o2hb_setup_callback(&o2net_hb_up, O2HB_NODE_UP_CB,
       o2net_hb_node_up_cb, ((void*)0), O2NET_HB_PRI);

 ret = o2hb_register_callback(((void*)0), &o2net_hb_up);
 if (ret == 0)
  ret = o2hb_register_callback(((void*)0), &o2net_hb_down);

 if (ret)
  o2net_unregister_hb_callbacks();

 return ret;
}
