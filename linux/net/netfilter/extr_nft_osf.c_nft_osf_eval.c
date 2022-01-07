
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcphdr {int syn; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {void* code; } ;
struct nft_regs {TYPE_1__ verdict; int * data; } ;
struct nft_pktinfo {struct sk_buff* skb; } ;
struct nft_osf {size_t dreg; int flags; int ttl; } ;
struct nft_expr {int dummy; } ;
struct nf_osf_data {char* genre; char* version; } ;


 void* NFT_BREAK ;
 int NFT_OSF_F_VERSION ;
 int NFT_OSF_MAXGENRELEN ;
 int ip_hdrlen (struct sk_buff*) ;
 int nf_osf_find (struct sk_buff*,int ,int ,struct nf_osf_data*) ;
 int nf_osf_fingers ;
 struct nft_osf* nft_expr_priv (struct nft_expr const*) ;
 struct tcphdr* skb_header_pointer (struct sk_buff*,int ,int,struct tcphdr*) ;
 int snprintf (char*,int ,char*,char*,char*) ;
 int strlcpy (char*,char*,int ) ;
 int strncpy (char*,char*,int ) ;

__attribute__((used)) static void nft_osf_eval(const struct nft_expr *expr, struct nft_regs *regs,
    const struct nft_pktinfo *pkt)
{
 struct nft_osf *priv = nft_expr_priv(expr);
 u32 *dest = &regs->data[priv->dreg];
 struct sk_buff *skb = pkt->skb;
 char os_match[NFT_OSF_MAXGENRELEN + 1];
 const struct tcphdr *tcp;
 struct nf_osf_data data;
 struct tcphdr _tcph;

 tcp = skb_header_pointer(skb, ip_hdrlen(skb),
     sizeof(struct tcphdr), &_tcph);
 if (!tcp) {
  regs->verdict.code = NFT_BREAK;
  return;
 }
 if (!tcp->syn) {
  regs->verdict.code = NFT_BREAK;
  return;
 }

 if (!nf_osf_find(skb, nf_osf_fingers, priv->ttl, &data)) {
  strncpy((char *)dest, "unknown", NFT_OSF_MAXGENRELEN);
 } else {
  if (priv->flags & NFT_OSF_F_VERSION)
   snprintf(os_match, NFT_OSF_MAXGENRELEN, "%s:%s",
     data.genre, data.version);
  else
   strlcpy(os_match, data.genre, NFT_OSF_MAXGENRELEN);

  strncpy((char *)dest, os_match, NFT_OSF_MAXGENRELEN);
 }
}
