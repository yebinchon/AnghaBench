
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_seqid_counter {int wait; int list; int lock; scalar_t__ counter; scalar_t__ flags; int create_time; } ;


 int INIT_LIST_HEAD (int *) ;
 int ktime_get () ;
 int rpc_init_wait_queue (int *,char*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void
nfs4_init_seqid_counter(struct nfs_seqid_counter *sc)
{
 sc->create_time = ktime_get();
 sc->flags = 0;
 sc->counter = 0;
 spin_lock_init(&sc->lock);
 INIT_LIST_HEAD(&sc->list);
 rpc_init_wait_queue(&sc->wait, "Seqid_waitqueue");
}
