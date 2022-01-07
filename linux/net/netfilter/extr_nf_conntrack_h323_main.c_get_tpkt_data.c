
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int doff; } ;
struct sk_buff {int len; } ;
struct nf_ct_h323_master {int* tpkt_len; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef int _tcph ;


 int BUG_ON (int ) ;
 int CTINFO2DIR (int) ;
 struct tcphdr* h323_buffer ;
 struct nf_ct_h323_master* nfct_help_data (struct nf_conn*) ;
 int pr_debug (char*,...) ;
 void* skb_header_pointer (struct sk_buff*,int,int,struct tcphdr*) ;

__attribute__((used)) static int get_tpkt_data(struct sk_buff *skb, unsigned int protoff,
    struct nf_conn *ct, enum ip_conntrack_info ctinfo,
    unsigned char **data, int *datalen, int *dataoff)
{
 struct nf_ct_h323_master *info = nfct_help_data(ct);
 int dir = CTINFO2DIR(ctinfo);
 const struct tcphdr *th;
 struct tcphdr _tcph;
 int tcpdatalen;
 int tcpdataoff;
 unsigned char *tpkt;
 int tpktlen;
 int tpktoff;


 th = skb_header_pointer(skb, protoff, sizeof(_tcph), &_tcph);
 if (th == ((void*)0))
  return 0;


 tcpdataoff = protoff + th->doff * 4;


 tcpdatalen = skb->len - tcpdataoff;
 if (tcpdatalen <= 0)
  goto clear_out;

 if (*data == ((void*)0)) {

  tpkt = skb_header_pointer(skb, tcpdataoff, tcpdatalen,
       h323_buffer);
  BUG_ON(tpkt == ((void*)0));


  if (tcpdatalen < 4 || tpkt[0] != 0x03 || tpkt[1] != 0) {

   if (info->tpkt_len[dir] > 0) {
    pr_debug("nf_ct_h323: previous packet "
      "indicated separate TPKT data of %hu "
      "bytes\n", info->tpkt_len[dir]);
    if (info->tpkt_len[dir] <= tcpdatalen) {


     *data = tpkt;
     *datalen = info->tpkt_len[dir];
     *dataoff = 0;
     goto out;
    }


    pr_debug("nf_ct_h323: fragmented TPKT\n");
    goto clear_out;
   }


   return 0;
  }
  tpktoff = 0;
 } else {
  tpktoff = *dataoff + *datalen;
  tcpdatalen -= tpktoff;
  if (tcpdatalen <= 4)
   goto clear_out;
  tpkt = *data + *datalen;


  if (tpkt[0] != 0x03 || tpkt[1] != 0)
   goto clear_out;
 }


 tpktlen = tpkt[2] * 256 + tpkt[3];
 if (tpktlen < 4)
  goto clear_out;
 if (tpktlen > tcpdatalen) {
  if (tcpdatalen == 4) {

   pr_debug("nf_ct_h323: separate TPKT header indicates "
     "there will be TPKT data of %hu bytes\n",
     tpktlen - 4);
   info->tpkt_len[dir] = tpktlen - 4;
   return 0;
  }

  pr_debug("nf_ct_h323: incomplete TPKT (fragmented?)\n");
  goto clear_out;
 }


 *data = tpkt + 4;
 *datalen = tpktlen - 4;
 *dataoff = tpktoff + 4;

      out:

 info->tpkt_len[dir] = 0;
 return 1;

      clear_out:
 info->tpkt_len[dir] = 0;
 return 0;
}
