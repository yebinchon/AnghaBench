
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amp_mgr {int kref; } ;


 int BT_DBG (char*,struct amp_mgr*,int ) ;
 int kref_get (int *) ;
 int kref_read (int *) ;

struct amp_mgr *amp_mgr_get(struct amp_mgr *mgr)
{
 BT_DBG("mgr %p orig refcnt %d", mgr, kref_read(&mgr->kref));

 kref_get(&mgr->kref);

 return mgr;
}
