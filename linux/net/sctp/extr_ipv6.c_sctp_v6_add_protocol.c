
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int IPPROTO_SCTP ;
 scalar_t__ inet6_add_protocol (int *,int ) ;
 int register_inet6addr_notifier (int *) ;
 int sctp_inet6addr_notifier ;
 int sctpv6_protocol ;

int sctp_v6_add_protocol(void)
{

 register_inet6addr_notifier(&sctp_inet6addr_notifier);

 if (inet6_add_protocol(&sctpv6_protocol, IPPROTO_SCTP) < 0)
  return -EAGAIN;

 return 0;
}
