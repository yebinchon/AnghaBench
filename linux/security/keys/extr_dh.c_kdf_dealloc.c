
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tfm; } ;
struct kdf_sdesc {TYPE_1__ shash; } ;


 int crypto_free_shash (scalar_t__) ;
 int kzfree (struct kdf_sdesc*) ;

__attribute__((used)) static void kdf_dealloc(struct kdf_sdesc *sdesc)
{
 if (!sdesc)
  return;

 if (sdesc->shash.tfm)
  crypto_free_shash(sdesc->shash.tfm);

 kzfree(sdesc);
}
