
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;


 int drv_bss_info_changed ;
 int tep_unregister_event_handler (struct tep_handle*,int,char*,char*,int ,int *) ;

void TEP_PLUGIN_UNLOADER(struct tep_handle *tep)
{
 tep_unregister_event_handler(tep, -1, "mac80211",
         "drv_bss_info_changed",
         drv_bss_info_changed, ((void*)0));
}
