
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svcxdr_tmpbuf {struct svcxdr_tmpbuf* next; } ;
struct svc_rqst {struct nfsd4_compoundargs* rq_argp; } ;
struct nfsd4_compoundargs {scalar_t__ ops; scalar_t__ iops; struct svcxdr_tmpbuf* to_free; struct svcxdr_tmpbuf* tmpp; } ;


 int kfree (struct svcxdr_tmpbuf*) ;

void nfsd4_release_compoundargs(struct svc_rqst *rqstp)
{
 struct nfsd4_compoundargs *args = rqstp->rq_argp;

 if (args->ops != args->iops) {
  kfree(args->ops);
  args->ops = args->iops;
 }
 kfree(args->tmpp);
 args->tmpp = ((void*)0);
 while (args->to_free) {
  struct svcxdr_tmpbuf *tb = args->to_free;
  args->to_free = tb->next;
  kfree(tb);
 }
}
