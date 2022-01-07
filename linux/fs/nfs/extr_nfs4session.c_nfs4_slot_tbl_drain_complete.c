
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_slot_table {int complete; } ;


 int complete (int *) ;
 scalar_t__ nfs4_slot_tbl_draining (struct nfs4_slot_table*) ;

void nfs4_slot_tbl_drain_complete(struct nfs4_slot_table *tbl)
{
 if (nfs4_slot_tbl_draining(tbl))
  complete(&tbl->complete);
}
