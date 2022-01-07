
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecdh_completion {int err; int completion; } ;
struct crypto_async_request {struct ecdh_completion* data; } ;


 int EINPROGRESS ;
 int complete (int *) ;

__attribute__((used)) static void ecdh_complete(struct crypto_async_request *req, int err)
{
 struct ecdh_completion *res = req->data;

 if (err == -EINPROGRESS)
  return;

 res->err = err;
 complete(&res->completion);
}
