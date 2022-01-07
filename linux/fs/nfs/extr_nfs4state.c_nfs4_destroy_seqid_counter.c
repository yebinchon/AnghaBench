
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_seqid_counter {int wait; } ;


 int rpc_destroy_wait_queue (int *) ;

__attribute__((used)) static void
nfs4_destroy_seqid_counter(struct nfs_seqid_counter *sc)
{
 rpc_destroy_wait_queue(&sc->wait);
}
