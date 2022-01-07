
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int * cl_slot_tbl; struct nfs4_session* cl_session; } ;
struct nfs4_session {int fc_slot_table; int bc_slot_table; } ;


 int nfs4_drain_slot_tbl (int *) ;

__attribute__((used)) static int nfs4_begin_drain_session(struct nfs_client *clp)
{
 struct nfs4_session *ses = clp->cl_session;
 int ret;

 if (clp->cl_slot_tbl)
  return nfs4_drain_slot_tbl(clp->cl_slot_tbl);


 ret = nfs4_drain_slot_tbl(&ses->bc_slot_table);
 if (ret)
  return ret;

 return nfs4_drain_slot_tbl(&ses->fc_slot_table);
}
