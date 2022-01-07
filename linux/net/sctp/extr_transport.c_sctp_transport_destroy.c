
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_transport {int rcu; scalar_t__ asoc; int packet; int refcnt; } ;


 int WARN (int,char*,struct sctp_transport*) ;
 int call_rcu (int *,int ) ;
 int refcount_read (int *) ;
 int sctp_association_put (scalar_t__) ;
 int sctp_packet_free (int *) ;
 int sctp_transport_destroy_rcu ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void sctp_transport_destroy(struct sctp_transport *transport)
{
 if (unlikely(refcount_read(&transport->refcnt))) {
  WARN(1, "Attempt to destroy undead transport %p!\n", transport);
  return;
 }

 sctp_packet_free(&transport->packet);

 if (transport->asoc)
  sctp_association_put(transport->asoc);

 call_rcu(&transport->rcu, sctp_transport_destroy_rcu);
}
