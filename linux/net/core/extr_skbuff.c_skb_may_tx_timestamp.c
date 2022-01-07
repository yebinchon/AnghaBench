
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_callback_lock; TYPE_1__* sk_socket; } ;
struct TYPE_2__ {scalar_t__ file; } ;


 int CAP_NET_RAW ;
 scalar_t__ file_ns_capable (scalar_t__,int *,int ) ;
 int init_user_ns ;
 scalar_t__ likely (int) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 scalar_t__ sysctl_tstamp_allow_data ;

__attribute__((used)) static bool skb_may_tx_timestamp(struct sock *sk, bool tsonly)
{
 bool ret;

 if (likely(sysctl_tstamp_allow_data || tsonly))
  return 1;

 read_lock_bh(&sk->sk_callback_lock);
 ret = sk->sk_socket && sk->sk_socket->file &&
       file_ns_capable(sk->sk_socket->file, &init_user_ns, CAP_NET_RAW);
 read_unlock_bh(&sk->sk_callback_lock);
 return ret;
}
