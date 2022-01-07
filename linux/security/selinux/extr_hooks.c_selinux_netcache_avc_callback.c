
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ AVC_CALLBACK_RESET ;
 int sel_netif_flush () ;
 int sel_netnode_flush () ;
 int sel_netport_flush () ;
 int synchronize_net () ;

__attribute__((used)) static int selinux_netcache_avc_callback(u32 event)
{
 if (event == AVC_CALLBACK_RESET) {
  sel_netif_flush();
  sel_netnode_flush();
  sel_netport_flush();
  synchronize_net();
 }
 return 0;
}
