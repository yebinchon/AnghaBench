
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sctp_transport {TYPE_3__* asoc; } ;
struct rhashtable_iter {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_5__ {struct sctp_transport* primary_path; } ;
struct TYPE_4__ {int sk; } ;
struct TYPE_6__ {TYPE_2__ peer; TYPE_1__ base; } ;


 int EAGAIN ;
 scalar_t__ IS_ERR (struct sctp_transport*) ;
 int PTR_ERR (struct sctp_transport*) ;
 scalar_t__ net_eq (int ,struct net*) ;
 struct sctp_transport* rhashtable_walk_next (struct rhashtable_iter*) ;
 int sctp_transport_hold (struct sctp_transport*) ;
 int sctp_transport_put (struct sctp_transport*) ;
 int sock_net (int ) ;

struct sctp_transport *sctp_transport_get_next(struct net *net,
            struct rhashtable_iter *iter)
{
 struct sctp_transport *t;

 t = rhashtable_walk_next(iter);
 for (; t; t = rhashtable_walk_next(iter)) {
  if (IS_ERR(t)) {
   if (PTR_ERR(t) == -EAGAIN)
    continue;
   break;
  }

  if (!sctp_transport_hold(t))
   continue;

  if (net_eq(sock_net(t->asoc->base.sk), net) &&
      t->asoc->peer.primary_path == t)
   break;

  sctp_transport_put(t);
 }

 return t;
}
