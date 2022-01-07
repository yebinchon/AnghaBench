
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_sequence_res {int * sr_slot; } ;
struct nfs4_sequence_args {int sa_cache_this; int sa_privileged; int * sa_slot; } ;



void nfs4_init_sequence(struct nfs4_sequence_args *args,
   struct nfs4_sequence_res *res, int cache_reply,
   int privileged)
{
 args->sa_slot = ((void*)0);
 args->sa_cache_this = cache_reply;
 args->sa_privileged = privileged;

 res->sr_slot = ((void*)0);
}
