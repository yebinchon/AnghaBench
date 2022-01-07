
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {scalar_t__ idr_base; int idr_rt; } ;


 void* radix_tree_lookup (int *,scalar_t__) ;

void *idr_find(const struct idr *idr, unsigned long id)
{
 return radix_tree_lookup(&idr->idr_rt, id - idr->idr_base);
}
