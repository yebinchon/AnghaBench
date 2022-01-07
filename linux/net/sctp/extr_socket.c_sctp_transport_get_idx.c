
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_transport {int dummy; } ;
struct rhashtable_iter {int dummy; } ;
struct net {int dummy; } ;


 int IS_ERR (struct sctp_transport*) ;
 struct sctp_transport* SEQ_START_TOKEN ;
 struct sctp_transport* sctp_transport_get_next (struct net*,struct rhashtable_iter*) ;
 int sctp_transport_put (struct sctp_transport*) ;

struct sctp_transport *sctp_transport_get_idx(struct net *net,
           struct rhashtable_iter *iter,
           int pos)
{
 struct sctp_transport *t;

 if (!pos)
  return SEQ_START_TOKEN;

 while ((t = sctp_transport_get_next(net, iter)) && !IS_ERR(t)) {
  if (!--pos)
   break;
  sctp_transport_put(t);
 }

 return t;
}
