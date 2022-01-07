
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int p9_xen_trans ;
 int v9fs_unregister_trans (int *) ;
 int xen_9pfs_front_driver ;
 void xenbus_unregister_driver (int *) ;

__attribute__((used)) static void p9_trans_xen_exit(void)
{
 v9fs_unregister_trans(&p9_xen_trans);
 return xenbus_unregister_driver(&xen_9pfs_front_driver);
}
