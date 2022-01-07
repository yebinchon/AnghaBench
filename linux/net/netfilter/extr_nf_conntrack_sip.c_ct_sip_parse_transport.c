
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct nf_conn {int dummy; } ;


 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 scalar_t__ ct_sip_parse_param (struct nf_conn*,char const*,unsigned int,unsigned int,char*,unsigned int*,unsigned int*) ;
 scalar_t__ nf_ct_protonum (struct nf_conn*) ;
 int strlen (char*) ;
 int strncasecmp (char const*,char*,int ) ;

__attribute__((used)) static int ct_sip_parse_transport(struct nf_conn *ct, const char *dptr,
      unsigned int dataoff, unsigned int datalen,
      u8 *proto)
{
 unsigned int matchoff, matchlen;

 if (ct_sip_parse_param(ct, dptr, dataoff, datalen, "transport=",
          &matchoff, &matchlen)) {
  if (!strncasecmp(dptr + matchoff, "TCP", strlen("TCP")))
   *proto = IPPROTO_TCP;
  else if (!strncasecmp(dptr + matchoff, "UDP", strlen("UDP")))
   *proto = IPPROTO_UDP;
  else
   return 0;

  if (*proto != nf_ct_protonum(ct))
   return 0;
 } else
  *proto = nf_ct_protonum(ct);

 return 1;
}
