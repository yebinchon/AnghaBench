
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ src_name; scalar_t__ sa; scalar_t__ dst_name; scalar_t__ da; } ;
struct j1939_sock {int state; scalar_t__ pgn_rx_filter; TYPE_1__ addr; int sk; } ;
struct TYPE_4__ {scalar_t__ dst_name; scalar_t__ da; scalar_t__ src_name; scalar_t__ sa; scalar_t__ pgn; } ;
struct j1939_sk_buff_cb {TYPE_2__ addr; } ;


 int J1939_SOCK_CONNECTED ;
 int J1939_SOCK_PROMISC ;
 int SOCK_BROADCAST ;
 scalar_t__ j1939_address_is_unicast (scalar_t__) ;
 scalar_t__ j1939_pgn_is_valid (scalar_t__) ;
 int sock_flag (int *,int ) ;

__attribute__((used)) static bool j1939_sk_match_dst(struct j1939_sock *jsk,
          const struct j1939_sk_buff_cb *skcb)
{
 if ((jsk->state & J1939_SOCK_PROMISC))
  return 1;


 if (jsk->addr.src_name && skcb->addr.dst_name) {
  if (jsk->addr.src_name != skcb->addr.dst_name)
   return 0;
 } else {





  if (j1939_address_is_unicast(skcb->addr.da)) {
   if (jsk->addr.sa != skcb->addr.da)
    return 0;
  } else if (!sock_flag(&jsk->sk, SOCK_BROADCAST)) {



   return 0;
  }
 }


 if (jsk->state & J1939_SOCK_CONNECTED) {



  if (jsk->addr.dst_name && skcb->addr.src_name) {
   if (jsk->addr.dst_name != skcb->addr.src_name)
    return 0;
  } else {
   if (jsk->addr.da != skcb->addr.sa)
    return 0;
  }
 }


 if (j1939_pgn_is_valid(jsk->pgn_rx_filter) &&
     jsk->pgn_rx_filter != skcb->addr.pgn)
  return 0;

 return 1;
}
