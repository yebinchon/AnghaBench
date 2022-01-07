
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shash_desc {int dummy; } ;
struct TYPE_2__ {struct crypto_shash* tfm; } ;
struct sdesc {TYPE_1__ shash; } ;
struct crypto_shash {int dummy; } ;


 int ENOMEM ;
 struct sdesc* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int crypto_shash_descsize (struct crypto_shash*) ;
 struct sdesc* kmalloc (int,int ) ;

__attribute__((used)) static struct sdesc *init_sdesc(struct crypto_shash *alg)
{
 struct sdesc *sdesc;
 int size;

 size = sizeof(struct shash_desc) + crypto_shash_descsize(alg);
 sdesc = kmalloc(size, GFP_KERNEL);
 if (!sdesc)
  return ERR_PTR(-ENOMEM);
 sdesc->shash.tfm = alg;
 return sdesc;
}
