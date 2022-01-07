
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nf_inet_addr {int ip6; int ip; } ;
typedef int u8 ;
struct nf_conn {int dummy; } ;




 int BUG () ;
 int in4_pton (char const*,int,int *,int,char const**) ;
 int in6_pton (char const*,int,int *,int,char const**) ;
 int memset (union nf_inet_addr*,int ,int) ;
 int nf_ct_l3num (struct nf_conn const*) ;

__attribute__((used)) static int sip_parse_addr(const struct nf_conn *ct, const char *cp,
     const char **endp, union nf_inet_addr *addr,
     const char *limit, bool delim)
{
 const char *end;
 int ret;

 if (!ct)
  return 0;

 memset(addr, 0, sizeof(*addr));
 switch (nf_ct_l3num(ct)) {
 case 129:
  ret = in4_pton(cp, limit - cp, (u8 *)&addr->ip, -1, &end);
  if (ret == 0)
   return 0;
  break;
 case 128:
  if (cp < limit && *cp == '[')
   cp++;
  else if (delim)
   return 0;

  ret = in6_pton(cp, limit - cp, (u8 *)&addr->ip6, -1, &end);
  if (ret == 0)
   return 0;

  if (end < limit && *end == ']')
   end++;
  else if (delim)
   return 0;
  break;
 default:
  BUG();
 }

 if (endp)
  *endp = end;
 return 1;
}
