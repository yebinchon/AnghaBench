
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nft_set_ext {int dummy; } ;
struct nft_set {int nelems; scalar_t__ size; int timeout; } ;
struct nft_regs {int * data; } ;
struct nft_expr {int dummy; } ;
struct nft_dynset {size_t sreg_key; size_t sreg_data; int * expr; int tmpl; scalar_t__ timeout; } ;


 int GFP_ATOMIC ;
 int atomic_add_unless (int *,int,scalar_t__) ;
 int atomic_dec (int *) ;
 scalar_t__ nft_expr_clone (int ,int *) ;
 struct nft_dynset* nft_expr_priv (struct nft_expr const*) ;
 int nft_set_elem_destroy (struct nft_set*,void*,int) ;
 struct nft_set_ext* nft_set_elem_ext (struct nft_set*,void*) ;
 void* nft_set_elem_init (struct nft_set*,int *,int *,int *,int ,int ,int ) ;
 int nft_set_ext_expr (struct nft_set_ext*) ;

__attribute__((used)) static void *nft_dynset_new(struct nft_set *set, const struct nft_expr *expr,
       struct nft_regs *regs)
{
 const struct nft_dynset *priv = nft_expr_priv(expr);
 struct nft_set_ext *ext;
 u64 timeout;
 void *elem;

 if (!atomic_add_unless(&set->nelems, 1, set->size))
  return ((void*)0);

 timeout = priv->timeout ? : set->timeout;
 elem = nft_set_elem_init(set, &priv->tmpl,
     &regs->data[priv->sreg_key],
     &regs->data[priv->sreg_data],
     timeout, 0, GFP_ATOMIC);
 if (elem == ((void*)0))
  goto err1;

 ext = nft_set_elem_ext(set, elem);
 if (priv->expr != ((void*)0) &&
     nft_expr_clone(nft_set_ext_expr(ext), priv->expr) < 0)
  goto err2;

 return elem;

err2:
 nft_set_elem_destroy(set, elem, 0);
err1:
 if (set->size)
  atomic_dec(&set->nelems);
 return ((void*)0);
}
