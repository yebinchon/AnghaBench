
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int p9_xen_trans ;
 int pr_info (char*) ;
 int v9fs_register_trans (int *) ;
 int v9fs_unregister_trans (int *) ;
 int xen_9pfs_front_driver ;
 int xen_domain () ;
 int xenbus_register_frontend (int *) ;

__attribute__((used)) static int p9_trans_xen_init(void)
{
 int rc;

 if (!xen_domain())
  return -ENODEV;

 pr_info("Initialising Xen transport for 9pfs\n");

 v9fs_register_trans(&p9_xen_trans);
 rc = xenbus_register_frontend(&xen_9pfs_front_driver);
 if (rc)
  v9fs_unregister_trans(&p9_xen_trans);

 return rc;
}
