
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GOSSIP_SYSFS_DEBUG ;
 int acache_orangefs_obj ;
 int capcache_orangefs_obj ;
 int ccache_orangefs_obj ;
 int gossip_debug (int ,char*) ;
 int kobject_put (int ) ;
 int ncache_orangefs_obj ;
 int orangefs_obj ;
 int pc_orangefs_obj ;
 int stats_orangefs_obj ;

void orangefs_sysfs_exit(void)
{
 gossip_debug(GOSSIP_SYSFS_DEBUG, "orangefs_sysfs_exit: start\n");
 kobject_put(acache_orangefs_obj);
 kobject_put(capcache_orangefs_obj);
 kobject_put(ccache_orangefs_obj);
 kobject_put(ncache_orangefs_obj);
 kobject_put(pc_orangefs_obj);
 kobject_put(stats_orangefs_obj);
 kobject_put(orangefs_obj);
}
