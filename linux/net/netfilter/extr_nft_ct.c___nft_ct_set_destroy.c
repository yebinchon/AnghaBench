
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_ctx {int net; } ;
struct nft_ct {int key; } ;




 int nf_connlabels_put (int ) ;
 int nft_ct_pcpu_template_refcnt ;
 int nft_ct_tmpl_put_pcpu () ;

__attribute__((used)) static void __nft_ct_set_destroy(const struct nft_ctx *ctx, struct nft_ct *priv)
{
 switch (priv->key) {
 default:
  break;
 }
}
