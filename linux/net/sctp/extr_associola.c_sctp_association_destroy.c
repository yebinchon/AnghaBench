
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sk; int dead; } ;
struct sctp_association {scalar_t__ assoc_id; int rmem_alloc; TYPE_1__ base; int ep; } ;


 int SCTP_DBG_OBJCNT_DEC (int ) ;
 int WARN (int,char*,struct sctp_association*) ;
 int WARN_ON (int ) ;
 int assoc ;
 int atomic_read (int *) ;
 int idr_remove (int *,scalar_t__) ;
 int kfree_rcu (struct sctp_association*,int ) ;
 int rcu ;
 int sctp_assocs_id ;
 int sctp_assocs_id_lock ;
 int sctp_endpoint_put (int ) ;
 int sock_put (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void sctp_association_destroy(struct sctp_association *asoc)
{
 if (unlikely(!asoc->base.dead)) {
  WARN(1, "Attempt to destroy undead association %p!\n", asoc);
  return;
 }

 sctp_endpoint_put(asoc->ep);
 sock_put(asoc->base.sk);

 if (asoc->assoc_id != 0) {
  spin_lock_bh(&sctp_assocs_id_lock);
  idr_remove(&sctp_assocs_id, asoc->assoc_id);
  spin_unlock_bh(&sctp_assocs_id_lock);
 }

 WARN_ON(atomic_read(&asoc->rmem_alloc));

 kfree_rcu(asoc, rcu);
 SCTP_DBG_OBJCNT_DEC(assoc);
}
