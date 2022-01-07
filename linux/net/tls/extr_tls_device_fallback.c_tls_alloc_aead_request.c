
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;
struct aead_request {int dummy; } ;
typedef int gfp_t ;


 int crypto_aead_reqsize (struct crypto_aead*) ;
 struct aead_request* kzalloc (unsigned int,int ) ;
 int tls_init_aead_request (struct aead_request*,struct crypto_aead*) ;

__attribute__((used)) static struct aead_request *tls_alloc_aead_request(struct crypto_aead *aead,
         gfp_t flags)
{
 unsigned int req_size = sizeof(struct aead_request) +
  crypto_aead_reqsize(aead);
 struct aead_request *aead_req;

 aead_req = kzalloc(req_size, flags);
 if (aead_req)
  tls_init_aead_request(aead_req, aead);
 return aead_req;
}
