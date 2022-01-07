
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct nfsd4_compoundargs {char* end; char* p; scalar_t__ pagelen; int tail; char* tmp; char* tmpp; TYPE_2__* rqstp; } ;
struct kvec {unsigned int iov_len; char* iov_base; } ;
typedef char __be32 ;
struct TYPE_3__ {struct kvec* tail; } ;
struct TYPE_4__ {TYPE_1__ rq_arg; } ;


 int GFP_KERNEL ;
 unsigned int PAGE_SIZE ;
 scalar_t__ XDR_QUADLEN (unsigned int) ;
 int kfree (char*) ;
 char* kmalloc (unsigned int,int ) ;
 int memcpy (char*,char*,unsigned int) ;
 int next_decode_page (struct nfsd4_compoundargs*) ;

__attribute__((used)) static __be32 *read_buf(struct nfsd4_compoundargs *argp, u32 nbytes)
{



 unsigned int avail = (char *)argp->end - (char *)argp->p;
 __be32 *p;

 if (argp->pagelen == 0) {
  struct kvec *vec = &argp->rqstp->rq_arg.tail[0];

  if (!argp->tail) {
   argp->tail = 1;
   avail = vec->iov_len;
   argp->p = vec->iov_base;
   argp->end = vec->iov_base + avail;
  }

  if (avail < nbytes)
   return ((void*)0);

  p = argp->p;
  argp->p += XDR_QUADLEN(nbytes);
  return p;
 }

 if (avail + argp->pagelen < nbytes)
  return ((void*)0);
 if (avail + PAGE_SIZE < nbytes)
  return ((void*)0);

 if (nbytes <= sizeof(argp->tmp))
  p = argp->tmp;
 else {
  kfree(argp->tmpp);
  p = argp->tmpp = kmalloc(nbytes, GFP_KERNEL);
  if (!p)
   return ((void*)0);

 }





 memcpy(p, argp->p, avail);
 next_decode_page(argp);
 memcpy(((char*)p)+avail, argp->p, (nbytes - avail));
 argp->p += XDR_QUADLEN(nbytes - avail);
 return p;
}
