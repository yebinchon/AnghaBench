
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nfs4_slot_table {scalar_t__ max_slotid; } ;
struct nfs4_slot {int dummy; } ;


 int E2BIG ;
 struct nfs4_slot* ERR_PTR (int ) ;
 int GFP_NOWAIT ;
 struct nfs4_slot* nfs4_find_or_create_slot (struct nfs4_slot_table*,scalar_t__,int ,int ) ;

struct nfs4_slot *nfs4_lookup_slot(struct nfs4_slot_table *tbl, u32 slotid)
{
 if (slotid <= tbl->max_slotid)
  return nfs4_find_or_create_slot(tbl, slotid, 0, GFP_NOWAIT);
 return ERR_PTR(-E2BIG);
}
