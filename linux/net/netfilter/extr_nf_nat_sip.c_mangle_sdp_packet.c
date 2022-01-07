
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef enum sdp_header_types { ____Placeholder_sdp_header_types } sdp_header_types ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ ct_sip_get_sdp_header (struct nf_conn*,char const*,unsigned int,unsigned int,int,int,unsigned int*,unsigned int*) ;
 scalar_t__ mangle_packet (struct sk_buff*,unsigned int,unsigned int,char const**,unsigned int*,unsigned int,unsigned int,char*,int) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;

__attribute__((used)) static int mangle_sdp_packet(struct sk_buff *skb, unsigned int protoff,
        unsigned int dataoff,
        const char **dptr, unsigned int *datalen,
        unsigned int sdpoff,
        enum sdp_header_types type,
        enum sdp_header_types term,
        char *buffer, int buflen)
{
 enum ip_conntrack_info ctinfo;
 struct nf_conn *ct = nf_ct_get(skb, &ctinfo);
 unsigned int matchlen, matchoff;

 if (ct_sip_get_sdp_header(ct, *dptr, sdpoff, *datalen, type, term,
      &matchoff, &matchlen) <= 0)
  return -ENOENT;
 return mangle_packet(skb, protoff, dataoff, dptr, datalen,
        matchoff, matchlen, buffer, buflen) ? 0 : -EINVAL;
}
