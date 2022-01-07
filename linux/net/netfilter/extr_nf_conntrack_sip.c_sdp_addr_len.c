
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct nf_conn {int dummy; } ;


 int pr_debug (char*,char const*) ;
 int sdp_parse_addr (struct nf_conn const*,char const*,char const**,union nf_inet_addr*,char const*) ;

__attribute__((used)) static int sdp_addr_len(const struct nf_conn *ct, const char *dptr,
   const char *limit, int *shift)
{
 union nf_inet_addr addr;
 const char *aux = dptr;

 if (!sdp_parse_addr(ct, dptr, &dptr, &addr, limit)) {
  pr_debug("ip: %s parse failed.!\n", dptr);
  return 0;
 }

 return dptr - aux;
}
