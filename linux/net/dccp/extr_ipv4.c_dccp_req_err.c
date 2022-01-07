
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sock {int dummy; } ;
struct request_sock {int rsk_listener; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int dreq_gss; int dreq_iss; } ;


 int LINUX_MIB_OUTOFWINDOWICMPS ;
 int __NET_INC_STATS (struct net*,int ) ;
 int between48 (int ,int ,int ) ;
 TYPE_1__* dccp_rsk (struct request_sock*) ;
 int inet_csk_reqsk_queue_drop (int ,struct request_sock*) ;
 struct request_sock* inet_reqsk (struct sock*) ;
 int reqsk_put (struct request_sock*) ;
 struct net* sock_net (struct sock*) ;

void dccp_req_err(struct sock *sk, u64 seq)
 {
 struct request_sock *req = inet_reqsk(sk);
 struct net *net = sock_net(sk);





 if (!between48(seq, dccp_rsk(req)->dreq_iss, dccp_rsk(req)->dreq_gss)) {
  __NET_INC_STATS(net, LINUX_MIB_OUTOFWINDOWICMPS);
 } else {






  inet_csk_reqsk_queue_drop(req->rsk_listener, req);
 }
 reqsk_put(req);
}
