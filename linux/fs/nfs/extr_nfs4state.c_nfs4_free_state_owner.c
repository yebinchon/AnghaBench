
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int owner_id; } ;
struct nfs4_state_owner {TYPE_2__ so_seqid; TYPE_1__* so_server; int so_cred; } ;
struct TYPE_3__ {int openowner_id; } ;


 int ida_simple_remove (int *,int ) ;
 int kfree (struct nfs4_state_owner*) ;
 int nfs4_destroy_seqid_counter (TYPE_2__*) ;
 int put_cred (int ) ;

__attribute__((used)) static void nfs4_free_state_owner(struct nfs4_state_owner *sp)
{
 nfs4_destroy_seqid_counter(&sp->so_seqid);
 put_cred(sp->so_cred);
 ida_simple_remove(&sp->so_server->openowner_id, sp->so_seqid.owner_id);
 kfree(sp);
}
