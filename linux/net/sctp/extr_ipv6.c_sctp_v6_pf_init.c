
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_INET6 ;
 int sctp_af_inet6 ;
 int sctp_pf_inet6 ;
 int sctp_register_af (int *) ;
 int sctp_register_pf (int *,int ) ;

void sctp_v6_pf_init(void)
{

 sctp_register_pf(&sctp_pf_inet6, PF_INET6);


 sctp_register_af(&sctp_af_inet6);
}
