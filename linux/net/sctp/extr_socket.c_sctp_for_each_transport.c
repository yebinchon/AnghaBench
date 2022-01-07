
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct sctp_transport sctp_transport ;
struct rhashtable_iter {int dummy; } ;
struct net {int dummy; } ;


 int IS_ERR_OR_NULL (struct sctp_transport*) ;
 struct sctp_transport* sctp_transport_get_idx (struct net*,struct rhashtable_iter*,int) ;
 struct sctp_transport* sctp_transport_get_next (struct net*,struct rhashtable_iter*) ;
 int sctp_transport_put (struct sctp_transport*) ;
 int sctp_transport_walk_start (struct rhashtable_iter*) ;
 int sctp_transport_walk_stop (struct rhashtable_iter*) ;

int sctp_for_each_transport(int (*cb)(struct sctp_transport *, void *),
       int (*cb_done)(struct sctp_transport *, void *),
       struct net *net, int *pos, void *p) {
 struct rhashtable_iter hti;
 struct sctp_transport *tsp;
 int ret;

again:
 ret = 0;
 sctp_transport_walk_start(&hti);

 tsp = sctp_transport_get_idx(net, &hti, *pos + 1);
 for (; !IS_ERR_OR_NULL(tsp); tsp = sctp_transport_get_next(net, &hti)) {
  ret = cb(tsp, p);
  if (ret)
   break;
  (*pos)++;
  sctp_transport_put(tsp);
 }
 sctp_transport_walk_stop(&hti);

 if (ret) {
  if (cb_done && !cb_done(tsp, p)) {
   (*pos)++;
   sctp_transport_put(tsp);
   goto again;
  }
  sctp_transport_put(tsp);
 }

 return ret;
}
