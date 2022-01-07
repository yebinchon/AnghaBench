
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {struct scatterlist* partially_sent_record; } ;
struct sock {int dummy; } ;
struct scatterlist {int length; } ;


 int put_page (int ) ;
 scalar_t__ sg_is_last (struct scatterlist*) ;
 int sg_page (struct scatterlist*) ;
 int sk_mem_uncharge (struct sock*,int ) ;

bool tls_free_partial_record(struct sock *sk, struct tls_context *ctx)
{
 struct scatterlist *sg;

 sg = ctx->partially_sent_record;
 if (!sg)
  return 0;

 while (1) {
  put_page(sg_page(sg));
  sk_mem_uncharge(sk, sg->length);

  if (sg_is_last(sg))
   break;
  sg++;
 }
 ctx->partially_sent_record = ((void*)0);
 return 1;
}
