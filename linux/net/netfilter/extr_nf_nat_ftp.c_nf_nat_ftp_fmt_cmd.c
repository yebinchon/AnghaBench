
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nf_inet_addr {int ip6; int ip; } ;
typedef int u16 ;
struct nf_conn {int dummy; } ;
typedef enum nf_ct_ftp_type { ____Placeholder_nf_ct_ftp_type } nf_ct_ftp_type ;


 int NFPROTO_IPV4 ;




 int nf_ct_l3num (struct nf_conn*) ;
 int snprintf (char*,size_t,char*,int,...) ;

__attribute__((used)) static int nf_nat_ftp_fmt_cmd(struct nf_conn *ct, enum nf_ct_ftp_type type,
         char *buffer, size_t buflen,
         union nf_inet_addr *addr, u16 port)
{
 switch (type) {
 case 128:
 case 129:
  return snprintf(buffer, buflen, "%u,%u,%u,%u,%u,%u",
    ((unsigned char *)&addr->ip)[0],
    ((unsigned char *)&addr->ip)[1],
    ((unsigned char *)&addr->ip)[2],
    ((unsigned char *)&addr->ip)[3],
    port >> 8,
    port & 0xFF);
 case 131:
  if (nf_ct_l3num(ct) == NFPROTO_IPV4)
   return snprintf(buffer, buflen, "|1|%pI4|%u|",
     &addr->ip, port);
  else
   return snprintf(buffer, buflen, "|2|%pI6|%u|",
     &addr->ip6, port);
 case 130:
  return snprintf(buffer, buflen, "|||%u|", port);
 }

 return 0;
}
