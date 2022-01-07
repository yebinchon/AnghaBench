
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct xdp_umem_fq_reuse {scalar_t__ nentries; scalar_t__ length; int handles; } ;
struct xdp_umem {struct xdp_umem_fq_reuse* fq_reuse; } ;


 int array_size (scalar_t__,int) ;
 int memcpy (int ,int ,int ) ;

struct xdp_umem_fq_reuse *xsk_reuseq_swap(struct xdp_umem *umem,
       struct xdp_umem_fq_reuse *newq)
{
 struct xdp_umem_fq_reuse *oldq = umem->fq_reuse;

 if (!oldq) {
  umem->fq_reuse = newq;
  return ((void*)0);
 }

 if (newq->nentries < oldq->length)
  return newq;

 memcpy(newq->handles, oldq->handles,
        array_size(oldq->length, sizeof(u64)));
 newq->length = oldq->length;

 umem->fq_reuse = newq;
 return oldq;
}
