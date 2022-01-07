
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* sk; } ;
struct sctp_association {int state; int pathmtu; TYPE_2__ base; scalar_t__ a_rwnd; scalar_t__ rwnd; } ;
struct TYPE_4__ {int rwnd_upd_shift; } ;
struct net {TYPE_1__ sctp; } ;
struct TYPE_6__ {int sk_rcvbuf; } ;






 int __u32 ;
 scalar_t__ max_t (int ,int,int ) ;
 struct net* sock_net (TYPE_3__*) ;

__attribute__((used)) static inline bool sctp_peer_needs_update(struct sctp_association *asoc)
{
 struct net *net = sock_net(asoc->base.sk);
 switch (asoc->state) {
 case 131:
 case 130:
 case 129:
 case 128:
  if ((asoc->rwnd > asoc->a_rwnd) &&
      ((asoc->rwnd - asoc->a_rwnd) >= max_t(__u32,
      (asoc->base.sk->sk_rcvbuf >> net->sctp.rwnd_upd_shift),
      asoc->pathmtu)))
   return 1;
  break;
 default:
  break;
 }
 return 0;
}
