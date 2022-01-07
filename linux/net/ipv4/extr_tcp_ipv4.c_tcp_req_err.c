
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sock {int dummy; } ;
struct request_sock {int rsk_listener; } ;
struct net {int dummy; } ;
struct TYPE_2__ {scalar_t__ snt_isn; } ;


 int LINUX_MIB_OUTOFWINDOWICMPS ;
 int __NET_INC_STATS (struct net*,int ) ;
 int inet_csk_reqsk_queue_drop (int ,struct request_sock*) ;
 struct request_sock* inet_reqsk (struct sock*) ;
 int reqsk_put (struct request_sock*) ;
 struct net* sock_net (struct sock*) ;
 int tcp_listendrop (int ) ;
 TYPE_1__* tcp_rsk (struct request_sock*) ;

void tcp_req_err(struct sock *sk, u32 seq, bool abort)
{
 struct request_sock *req = inet_reqsk(sk);
 struct net *net = sock_net(sk);




 if (seq != tcp_rsk(req)->snt_isn) {
  __NET_INC_STATS(net, LINUX_MIB_OUTOFWINDOWICMPS);
 } else if (abort) {






  inet_csk_reqsk_queue_drop(req->rsk_listener, req);
  tcp_listendrop(req->rsk_listener);
 }
 reqsk_put(req);
}
