
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPPROTO_SCTP ;
 int inet_del_protocol (int *,int ) ;
 int sctp_inetaddr_notifier ;
 int sctp_protocol ;
 int unregister_inetaddr_notifier (int *) ;

__attribute__((used)) static void sctp_v4_del_protocol(void)
{
 inet_del_protocol(&sctp_protocol, IPPROTO_SCTP);
 unregister_inetaddr_notifier(&sctp_inetaddr_notifier);
}
