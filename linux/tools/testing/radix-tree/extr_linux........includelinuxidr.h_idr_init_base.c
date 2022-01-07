
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int idr_base; scalar_t__ idr_next; int idr_rt; } ;


 int IDR_RT_MARKER ;
 int INIT_RADIX_TREE (int *,int ) ;

__attribute__((used)) static inline void idr_init_base(struct idr *idr, int base)
{
 INIT_RADIX_TREE(&idr->idr_rt, IDR_RT_MARKER);
 idr->idr_base = base;
 idr->idr_next = 0;
}
