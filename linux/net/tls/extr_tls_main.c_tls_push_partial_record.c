
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tls_context {struct scatterlist* partially_sent_record; int partially_sent_offset; } ;
struct sock {int dummy; } ;
struct scatterlist {int dummy; } ;


 int tls_push_sg (struct sock*,struct tls_context*,struct scatterlist*,int ,int) ;

int tls_push_partial_record(struct sock *sk, struct tls_context *ctx,
       int flags)
{
 struct scatterlist *sg;
 u16 offset;

 sg = ctx->partially_sent_record;
 offset = ctx->partially_sent_offset;

 ctx->partially_sent_record = ((void*)0);
 return tls_push_sg(sk, ctx, sg, offset, flags);
}
