
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct sk_buff {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef enum sdp_header_types { ____Placeholder_sdp_header_types } sdp_header_types ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int INET6_ADDRSTRLEN ;
 unsigned int mangle_content_len (struct sk_buff*,unsigned int,unsigned int,char const**,unsigned int*) ;
 scalar_t__ mangle_sdp_packet (struct sk_buff*,unsigned int,unsigned int,char const**,unsigned int*,unsigned int,int,int,char*,unsigned int) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;
 unsigned int sip_sprintf_addr (struct nf_conn*,char*,union nf_inet_addr const*,int) ;

__attribute__((used)) static unsigned int nf_nat_sdp_addr(struct sk_buff *skb, unsigned int protoff,
        unsigned int dataoff,
        const char **dptr, unsigned int *datalen,
        unsigned int sdpoff,
        enum sdp_header_types type,
        enum sdp_header_types term,
        const union nf_inet_addr *addr)
{
 enum ip_conntrack_info ctinfo;
 struct nf_conn *ct = nf_ct_get(skb, &ctinfo);
 char buffer[INET6_ADDRSTRLEN];
 unsigned int buflen;

 buflen = sip_sprintf_addr(ct, buffer, addr, 0);
 if (mangle_sdp_packet(skb, protoff, dataoff, dptr, datalen,
         sdpoff, type, term, buffer, buflen))
  return 0;

 return mangle_content_len(skb, protoff, dataoff, dptr, datalen);
}
