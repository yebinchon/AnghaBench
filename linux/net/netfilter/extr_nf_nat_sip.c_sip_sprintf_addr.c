
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nf_inet_addr {int ip6; int ip; } ;
struct nf_conn {int dummy; } ;


 scalar_t__ NFPROTO_IPV4 ;
 scalar_t__ nf_ct_l3num (struct nf_conn const*) ;
 int sprintf (char*,char*,int *) ;

__attribute__((used)) static int sip_sprintf_addr(const struct nf_conn *ct, char *buffer,
       const union nf_inet_addr *addr, bool delim)
{
 if (nf_ct_l3num(ct) == NFPROTO_IPV4)
  return sprintf(buffer, "%pI4", &addr->ip);
 else {
  if (delim)
   return sprintf(buffer, "[%pI6c]", &addr->ip6);
  else
   return sprintf(buffer, "%pI6c", &addr->ip6);
 }
}
