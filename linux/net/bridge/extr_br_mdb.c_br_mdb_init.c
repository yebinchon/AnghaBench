
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_BRIDGE ;
 int RTM_DELMDB ;
 int RTM_GETMDB ;
 int RTM_NEWMDB ;
 int THIS_MODULE ;
 int * br_mdb_add ;
 int * br_mdb_del ;
 int * br_mdb_dump ;
 int rtnl_register_module (int ,int ,int ,int *,int *,int ) ;

void br_mdb_init(void)
{
 rtnl_register_module(THIS_MODULE, PF_BRIDGE, RTM_GETMDB, ((void*)0), br_mdb_dump, 0);
 rtnl_register_module(THIS_MODULE, PF_BRIDGE, RTM_NEWMDB, br_mdb_add, ((void*)0), 0);
 rtnl_register_module(THIS_MODULE, PF_BRIDGE, RTM_DELMDB, br_mdb_del, ((void*)0), 0);
}
