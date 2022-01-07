
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nf_inet_addr {int ip6; int ip; } ;
typedef int u16 ;
struct nf_conn {int dummy; } ;


 scalar_t__ NFPROTO_IPV4 ;
 scalar_t__ nf_ct_l3num (struct nf_conn const*) ;
 int sprintf (char*,char*,int *,int) ;

__attribute__((used)) static int sip_sprintf_addr_port(const struct nf_conn *ct, char *buffer,
     const union nf_inet_addr *addr, u16 port)
{
 if (nf_ct_l3num(ct) == NFPROTO_IPV4)
  return sprintf(buffer, "%pI4:%u", &addr->ip, port);
 else
  return sprintf(buffer, "[%pI6c]:%u", &addr->ip6, port);
}
