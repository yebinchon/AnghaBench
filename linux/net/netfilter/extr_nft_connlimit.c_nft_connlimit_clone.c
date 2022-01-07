
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct nft_expr const nft_expr ;
struct nft_connlimit {int invert; int limit; int list; } ;


 int nf_conncount_list_init (int *) ;
 struct nft_connlimit* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static int nft_connlimit_clone(struct nft_expr *dst, const struct nft_expr *src)
{
 struct nft_connlimit *priv_dst = nft_expr_priv(dst);
 struct nft_connlimit *priv_src = nft_expr_priv(src);

 nf_conncount_list_init(&priv_dst->list);
 priv_dst->limit = priv_src->limit;
 priv_dst->invert = priv_src->invert;

 return 0;
}
