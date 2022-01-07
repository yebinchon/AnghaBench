
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {scalar_t__ idr_base; int idr_rt; } ;


 void* radix_tree_delete_item (int *,scalar_t__,int *) ;

void *idr_remove(struct idr *idr, unsigned long id)
{
 return radix_tree_delete_item(&idr->idr_rt, id - idr->idr_base, ((void*)0));
}
