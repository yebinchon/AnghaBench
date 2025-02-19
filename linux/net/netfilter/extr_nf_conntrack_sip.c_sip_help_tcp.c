
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int doff; } ;
struct sk_buff {unsigned int len; char* data; } ;
struct nf_nat_sip_hooks {int (* seq_adjust ) (struct sk_buff*,unsigned int,unsigned int) ;} ;
struct nf_conn {int status; } ;
typedef unsigned int s16 ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef int _tcph ;


 int HZ ;
 int IPS_NAT_MASK ;
 int IP_CT_ESTABLISHED ;
 int IP_CT_ESTABLISHED_REPLY ;
 int NF_ACCEPT ;
 int NF_DROP ;
 int SIP_HDR_CONTENT_LENGTH ;
 scalar_t__ ct_sip_get_header (struct nf_conn*,char const*,int ,unsigned int,int ,unsigned int*,unsigned int*) ;
 int nf_ct_refresh (struct nf_conn*,struct sk_buff*,int) ;
 int nf_nat_sip_hooks ;
 int process_sip_msg (struct sk_buff*,struct nf_conn*,unsigned int,unsigned int,char const**,unsigned int*) ;
 struct nf_nat_sip_hooks* rcu_dereference (int ) ;
 unsigned int simple_strtoul (char const*,char**,int) ;
 int sip_timeout ;
 struct tcphdr* skb_header_pointer (struct sk_buff*,unsigned int,int,struct tcphdr*) ;
 int skb_linearize (struct sk_buff*) ;
 unsigned int strlen (char*) ;
 int stub1 (struct sk_buff*,unsigned int,unsigned int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int sip_help_tcp(struct sk_buff *skb, unsigned int protoff,
   struct nf_conn *ct, enum ip_conntrack_info ctinfo)
{
 struct tcphdr *th, _tcph;
 unsigned int dataoff, datalen;
 unsigned int matchoff, matchlen, clen;
 unsigned int msglen, origlen;
 const char *dptr, *end;
 s16 diff, tdiff = 0;
 int ret = NF_ACCEPT;
 bool term;

 if (ctinfo != IP_CT_ESTABLISHED &&
     ctinfo != IP_CT_ESTABLISHED_REPLY)
  return NF_ACCEPT;


 th = skb_header_pointer(skb, protoff, sizeof(_tcph), &_tcph);
 if (th == ((void*)0))
  return NF_ACCEPT;
 dataoff = protoff + th->doff * 4;
 if (dataoff >= skb->len)
  return NF_ACCEPT;

 nf_ct_refresh(ct, skb, sip_timeout * HZ);

 if (unlikely(skb_linearize(skb)))
  return NF_DROP;

 dptr = skb->data + dataoff;
 datalen = skb->len - dataoff;
 if (datalen < strlen("SIP/2.0 200"))
  return NF_ACCEPT;

 while (1) {
  if (ct_sip_get_header(ct, dptr, 0, datalen,
          SIP_HDR_CONTENT_LENGTH,
          &matchoff, &matchlen) <= 0)
   break;

  clen = simple_strtoul(dptr + matchoff, (char **)&end, 10);
  if (dptr + matchoff == end)
   break;

  term = 0;
  for (; end + strlen("\r\n\r\n") <= dptr + datalen; end++) {
   if (end[0] == '\r' && end[1] == '\n' &&
       end[2] == '\r' && end[3] == '\n') {
    term = 1;
    break;
   }
  }
  if (!term)
   break;
  end += strlen("\r\n\r\n") + clen;

  msglen = origlen = end - dptr;
  if (msglen > datalen)
   return NF_ACCEPT;

  ret = process_sip_msg(skb, ct, protoff, dataoff,
          &dptr, &msglen);

  if (ret != NF_ACCEPT)
   break;
  diff = msglen - origlen;
  tdiff += diff;

  dataoff += msglen;
  dptr += msglen;
  datalen = datalen + diff - msglen;
 }

 if (ret == NF_ACCEPT && ct->status & IPS_NAT_MASK) {
  const struct nf_nat_sip_hooks *hooks;

  hooks = rcu_dereference(nf_nat_sip_hooks);
  if (hooks)
   hooks->seq_adjust(skb, protoff, tdiff);
 }

 return ret;
}
