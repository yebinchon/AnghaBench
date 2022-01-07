
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {int dummy; } ;
struct inet_connection_sock {TYPE_1__* icsk_ca_ops; } ;
struct TYPE_2__ {int (* in_ack_event ) (struct sock*,int ) ;} ;


 struct inet_connection_sock* inet_csk (struct sock*) ;
 int stub1 (struct sock*,int ) ;

__attribute__((used)) static inline void tcp_in_ack_event(struct sock *sk, u32 flags)
{
 const struct inet_connection_sock *icsk = inet_csk(sk);

 if (icsk->icsk_ca_ops->in_ack_event)
  icsk->icsk_ca_ops->in_ack_event(sk, flags);
}
