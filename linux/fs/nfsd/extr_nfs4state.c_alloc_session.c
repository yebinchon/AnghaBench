
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_slot {int dummy; } ;
struct nfsd4_session {struct nfsd4_session** se_slots; int se_bchannel; int se_fchannel; } ;
struct nfsd4_channel_attrs {int maxreqs; } ;


 int BUILD_BUG_ON (int) ;
 int GFP_KERNEL ;
 int NFSD_MAX_SLOTS_PER_SESSION ;
 int PAGE_SIZE ;
 int kfree (struct nfsd4_session*) ;
 void* kzalloc (int,int ) ;
 int memcpy (int *,struct nfsd4_channel_attrs*,int) ;
 int slot_bytes (struct nfsd4_channel_attrs*) ;

__attribute__((used)) static struct nfsd4_session *alloc_session(struct nfsd4_channel_attrs *fattrs,
        struct nfsd4_channel_attrs *battrs)
{
 int numslots = fattrs->maxreqs;
 int slotsize = slot_bytes(fattrs);
 struct nfsd4_session *new;
 int mem, i;

 BUILD_BUG_ON(NFSD_MAX_SLOTS_PER_SESSION * sizeof(struct nfsd4_slot *)
   + sizeof(struct nfsd4_session) > PAGE_SIZE);
 mem = numslots * sizeof(struct nfsd4_slot *);

 new = kzalloc(sizeof(*new) + mem, GFP_KERNEL);
 if (!new)
  return ((void*)0);

 for (i = 0; i < numslots; i++) {
  new->se_slots[i] = kzalloc(slotsize, GFP_KERNEL);
  if (!new->se_slots[i])
   goto out_free;
 }

 memcpy(&new->se_fchannel, fattrs, sizeof(struct nfsd4_channel_attrs));
 memcpy(&new->se_bchannel, battrs, sizeof(struct nfsd4_channel_attrs));

 return new;
out_free:
 while (i--)
  kfree(new->se_slots[i]);
 kfree(new);
 return ((void*)0);
}
