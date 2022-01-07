
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amp_mgr {int kref; } ;


 int BT_DBG (char*,struct amp_mgr*,int ) ;
 int amp_mgr_destroy ;
 int kref_put (int *,int *) ;
 int kref_read (int *) ;

int amp_mgr_put(struct amp_mgr *mgr)
{
 BT_DBG("mgr %p orig refcnt %d", mgr, kref_read(&mgr->kref));

 return kref_put(&mgr->kref, &amp_mgr_destroy);
}
