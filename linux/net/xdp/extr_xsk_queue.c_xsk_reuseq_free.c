
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_umem_fq_reuse {int dummy; } ;


 int kvfree (struct xdp_umem_fq_reuse*) ;

void xsk_reuseq_free(struct xdp_umem_fq_reuse *rq)
{
 kvfree(rq);
}
