
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_BRIDGE ;
 int RTM_DELMDB ;
 int RTM_GETMDB ;
 int RTM_NEWMDB ;
 int rtnl_unregister (int ,int ) ;

void br_mdb_uninit(void)
{
 rtnl_unregister(PF_BRIDGE, RTM_GETMDB);
 rtnl_unregister(PF_BRIDGE, RTM_NEWMDB);
 rtnl_unregister(PF_BRIDGE, RTM_DELMDB);
}
