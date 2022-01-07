
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; } ;
struct ahash_request {int dummy; } ;


 int ahash_request_set_crypt (struct ahash_request*,struct scatterlist*,int *,int ) ;
 int crypto_ahash_update (struct ahash_request*) ;

__attribute__((used)) static int
checksummer(struct scatterlist *sg, void *data)
{
 struct ahash_request *req = data;

 ahash_request_set_crypt(req, sg, ((void*)0), sg->length);

 return crypto_ahash_update(req);
}
