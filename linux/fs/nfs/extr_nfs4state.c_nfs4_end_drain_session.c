
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int * cl_slot_tbl; struct nfs4_session* cl_session; } ;
struct nfs4_session {int fc_slot_table; int bc_slot_table; } ;


 int nfs4_end_drain_slot_table (int *) ;

__attribute__((used)) static void nfs4_end_drain_session(struct nfs_client *clp)
{
 struct nfs4_session *ses = clp->cl_session;

 if (clp->cl_slot_tbl) {
  nfs4_end_drain_slot_table(clp->cl_slot_tbl);
  return;
 }

 if (ses != ((void*)0)) {
  nfs4_end_drain_slot_table(&ses->bc_slot_table);
  nfs4_end_drain_slot_table(&ses->fc_slot_table);
 }
}
