
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inet6_register_protosw (int *) ;
 int proto_register (int *,int) ;
 int sctpv6_prot ;
 int sctpv6_seqpacket_protosw ;
 int sctpv6_stream_protosw ;

int sctp_v6_protosw_init(void)
{
 int rc;

 rc = proto_register(&sctpv6_prot, 1);
 if (rc)
  return rc;


 inet6_register_protosw(&sctpv6_seqpacket_protosw);
 inet6_register_protosw(&sctpv6_stream_protosw);

 return 0;
}
