
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 scalar_t__ dccp_ackvec_pending (struct sock const*) ;
 scalar_t__ inet_csk_ack_scheduled (struct sock const*) ;

__attribute__((used)) static inline int dccp_ack_pending(const struct sock *sk)
{
 return dccp_ackvec_pending(sk) || inet_csk_ack_scheduled(sk);
}
