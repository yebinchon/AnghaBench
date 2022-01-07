
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_5__ {int flags; int qthreshold; int copy_len; int group; } ;
struct TYPE_4__ {int logflags; int level; } ;
struct TYPE_6__ {TYPE_2__ ulog; TYPE_1__ log; } ;
struct nf_loginfo {int type; TYPE_3__ u; } ;
struct nft_log {scalar_t__ prefix; struct nf_loginfo loginfo; } ;
struct nft_expr {int dummy; } ;


 int NFTA_LOG_FLAGS ;
 int NFTA_LOG_GROUP ;
 int NFTA_LOG_LEVEL ;
 int NFTA_LOG_PREFIX ;
 int NFTA_LOG_QTHRESHOLD ;
 int NFTA_LOG_SNAPLEN ;
 int NF_LOG_F_COPY_LEN ;


 int htonl (int ) ;
 int htons (int ) ;
 struct nft_log* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nft_log_null_prefix ;
 int nla_put_be16 (struct sk_buff*,int ,int ) ;
 int nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,scalar_t__) ;

__attribute__((used)) static int nft_log_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 const struct nft_log *priv = nft_expr_priv(expr);
 const struct nf_loginfo *li = &priv->loginfo;

 if (priv->prefix != nft_log_null_prefix)
  if (nla_put_string(skb, NFTA_LOG_PREFIX, priv->prefix))
   goto nla_put_failure;
 switch (li->type) {
 case 129:
  if (nla_put_be32(skb, NFTA_LOG_LEVEL, htonl(li->u.log.level)))
   goto nla_put_failure;

  if (li->u.log.logflags) {
   if (nla_put_be32(skb, NFTA_LOG_FLAGS,
      htonl(li->u.log.logflags)))
    goto nla_put_failure;
  }
  break;
 case 128:
  if (nla_put_be16(skb, NFTA_LOG_GROUP, htons(li->u.ulog.group)))
   goto nla_put_failure;

  if (li->u.ulog.flags & NF_LOG_F_COPY_LEN) {
   if (nla_put_be32(skb, NFTA_LOG_SNAPLEN,
      htonl(li->u.ulog.copy_len)))
    goto nla_put_failure;
  }
  if (li->u.ulog.qthreshold) {
   if (nla_put_be16(skb, NFTA_LOG_QTHRESHOLD,
      htons(li->u.ulog.qthreshold)))
    goto nla_put_failure;
  }
  break;
 }
 return 0;

nla_put_failure:
 return -1;
}
