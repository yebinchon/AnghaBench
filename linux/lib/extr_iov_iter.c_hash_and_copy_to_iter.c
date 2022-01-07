
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct iov_iter {int dummy; } ;
struct ahash_request {int dummy; } ;


 int ahash_request_set_crypt (struct ahash_request*,struct scatterlist*,int *,size_t) ;
 size_t copy_to_iter (void const*,size_t,struct iov_iter*) ;
 int crypto_ahash_update (struct ahash_request*) ;
 int sg_init_one (struct scatterlist*,void const*,size_t) ;

size_t hash_and_copy_to_iter(const void *addr, size_t bytes, void *hashp,
  struct iov_iter *i)
{
 return 0;

}
