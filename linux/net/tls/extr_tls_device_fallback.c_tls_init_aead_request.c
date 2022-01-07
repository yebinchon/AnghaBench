
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;
struct aead_request {int dummy; } ;


 int TLS_AAD_SPACE_SIZE ;
 int aead_request_set_ad (struct aead_request*,int ) ;
 int aead_request_set_tfm (struct aead_request*,struct crypto_aead*) ;

__attribute__((used)) static void tls_init_aead_request(struct aead_request *aead_req,
      struct crypto_aead *aead)
{
 aead_request_set_tfm(aead_req, aead);
 aead_request_set_ad(aead_req, TLS_AAD_SPACE_SIZE);
}
