
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;


 int call_site_handler ;
 int tep_unregister_event_handler (struct tep_handle*,int,char*,char*,int ,int *) ;

void TEP_PLUGIN_UNLOADER(struct tep_handle *tep)
{
 tep_unregister_event_handler(tep, -1, "kmem", "kfree",
         call_site_handler, ((void*)0));

 tep_unregister_event_handler(tep, -1, "kmem", "kmalloc",
         call_site_handler, ((void*)0));

 tep_unregister_event_handler(tep, -1, "kmem", "kmalloc_node",
         call_site_handler, ((void*)0));

 tep_unregister_event_handler(tep, -1, "kmem", "kmem_cache_alloc",
         call_site_handler, ((void*)0));

 tep_unregister_event_handler(tep, -1, "kmem",
         "kmem_cache_alloc_node",
         call_site_handler, ((void*)0));

 tep_unregister_event_handler(tep, -1, "kmem", "kmem_cache_free",
         call_site_handler, ((void*)0));
}
