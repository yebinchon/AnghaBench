
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {struct crypto_aead* data; } ;
struct crypto_aead {int dummy; } ;


 int crypto_free_aead (struct crypto_aead*) ;

__attribute__((used)) static void esp6_destroy(struct xfrm_state *x)
{
 struct crypto_aead *aead = x->data;

 if (!aead)
  return;

 crypto_free_aead(aead);
}
