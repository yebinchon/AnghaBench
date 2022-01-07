
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

__attribute__((used)) static int sdp_parse_addr(const struct nf_conn *ct, const char *cp,
     const char **endp, union nf_inet_addr *addr,
     const char *limit)
{
 const char *end;
 int ret;

 memset(addr, 0, sizeof(*addr));
 switch (nf_ct_l3num(ct)) {
 case 129:
  ret = in4_pton(cp, limit - cp, (u8 *)&addr->ip, -1, &end);
  break;
 case 128:
  ret = in6_pton(cp, limit - cp, (u8 *)&addr->ip6, -1, &end);
  break;
 default:
  BUG();
 }

 if (ret == 0)
  return 0;
 if (endp)
  *endp = end;
 return 1;
}
