
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct TYPE_5__ {scalar_t__ level; int logflags; } ;
struct TYPE_4__ {void* qthreshold; void* copy_len; int flags; void* group; } ;
struct TYPE_6__ {TYPE_2__ log; TYPE_1__ ulog; } ;
struct nf_loginfo {int type; TYPE_3__ u; } ;
struct nft_log {char* prefix; struct nf_loginfo loginfo; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int family; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t NFTA_LOG_FLAGS ;
 size_t NFTA_LOG_GROUP ;
 size_t NFTA_LOG_LEVEL ;
 size_t NFTA_LOG_PREFIX ;
 size_t NFTA_LOG_QTHRESHOLD ;
 size_t NFTA_LOG_SNAPLEN ;
 scalar_t__ NFT_LOGLEVEL_AUDIT ;
 scalar_t__ NFT_LOGLEVEL_WARNING ;
 int NF_LOG_F_COPY_LEN ;
 int NF_LOG_MASK ;


 int kfree (char*) ;
 char* kmalloc (scalar_t__,int ) ;
 int nf_logger_find_get (int ,int) ;
 struct nft_log* nft_expr_priv (struct nft_expr const*) ;
 char* nft_log_null_prefix ;
 int nla_get_be16 (struct nlattr const* const) ;
 int nla_get_be32 (struct nlattr const* const) ;
 scalar_t__ nla_len (struct nlattr const*) ;
 int nla_strlcpy (char*,struct nlattr const*,scalar_t__) ;
 void* ntohl (int ) ;
 void* ntohs (int ) ;

__attribute__((used)) static int nft_log_init(const struct nft_ctx *ctx,
   const struct nft_expr *expr,
   const struct nlattr * const tb[])
{
 struct nft_log *priv = nft_expr_priv(expr);
 struct nf_loginfo *li = &priv->loginfo;
 const struct nlattr *nla;
 int err;

 li->type = 129;
 if (tb[NFTA_LOG_LEVEL] != ((void*)0) &&
     tb[NFTA_LOG_GROUP] != ((void*)0))
  return -EINVAL;
 if (tb[NFTA_LOG_GROUP] != ((void*)0)) {
  li->type = 128;
  if (tb[NFTA_LOG_FLAGS] != ((void*)0))
   return -EINVAL;
 }

 nla = tb[NFTA_LOG_PREFIX];
 if (nla != ((void*)0)) {
  priv->prefix = kmalloc(nla_len(nla) + 1, GFP_KERNEL);
  if (priv->prefix == ((void*)0))
   return -ENOMEM;
  nla_strlcpy(priv->prefix, nla, nla_len(nla) + 1);
 } else {
  priv->prefix = (char *)nft_log_null_prefix;
 }

 switch (li->type) {
 case 129:
  if (tb[NFTA_LOG_LEVEL] != ((void*)0)) {
   li->u.log.level =
    ntohl(nla_get_be32(tb[NFTA_LOG_LEVEL]));
  } else {
   li->u.log.level = NFT_LOGLEVEL_WARNING;
  }
  if (li->u.log.level > NFT_LOGLEVEL_AUDIT) {
   err = -EINVAL;
   goto err1;
  }

  if (tb[NFTA_LOG_FLAGS] != ((void*)0)) {
   li->u.log.logflags =
    ntohl(nla_get_be32(tb[NFTA_LOG_FLAGS]));
   if (li->u.log.logflags & ~NF_LOG_MASK) {
    err = -EINVAL;
    goto err1;
   }
  }
  break;
 case 128:
  li->u.ulog.group = ntohs(nla_get_be16(tb[NFTA_LOG_GROUP]));
  if (tb[NFTA_LOG_SNAPLEN] != ((void*)0)) {
   li->u.ulog.flags |= NF_LOG_F_COPY_LEN;
   li->u.ulog.copy_len =
    ntohl(nla_get_be32(tb[NFTA_LOG_SNAPLEN]));
  }
  if (tb[NFTA_LOG_QTHRESHOLD] != ((void*)0)) {
   li->u.ulog.qthreshold =
    ntohs(nla_get_be16(tb[NFTA_LOG_QTHRESHOLD]));
  }
  break;
 }

 if (li->u.log.level == NFT_LOGLEVEL_AUDIT)
  return 0;

 err = nf_logger_find_get(ctx->family, li->type);
 if (err < 0)
  goto err1;

 return 0;

err1:
 if (priv->prefix != nft_log_null_prefix)
  kfree(priv->prefix);
 return err;
}
