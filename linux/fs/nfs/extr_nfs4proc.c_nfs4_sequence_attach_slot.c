
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_slot {int privileged; } ;
struct nfs4_sequence_res {struct nfs4_slot* sr_slot; } ;
struct nfs4_sequence_args {struct nfs4_slot* sa_slot; scalar_t__ sa_privileged; } ;



__attribute__((used)) static
void nfs4_sequence_attach_slot(struct nfs4_sequence_args *args,
  struct nfs4_sequence_res *res,
  struct nfs4_slot *slot)
{
 if (!slot)
  return;
 slot->privileged = args->sa_privileged ? 1 : 0;
 args->sa_slot = slot;

 res->sr_slot = slot;
}
