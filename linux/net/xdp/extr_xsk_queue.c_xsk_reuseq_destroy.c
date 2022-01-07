
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_umem {int * fq_reuse; } ;


 int xsk_reuseq_free (int *) ;

void xsk_reuseq_destroy(struct xdp_umem *umem)
{
 xsk_reuseq_free(umem->fq_reuse);
 umem->fq_reuse = ((void*)0);
}
