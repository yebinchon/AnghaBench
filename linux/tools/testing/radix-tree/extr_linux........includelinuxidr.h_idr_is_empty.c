
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int idr_rt; } ;


 int IDR_FREE ;
 scalar_t__ radix_tree_empty (int *) ;
 scalar_t__ radix_tree_tagged (int *,int ) ;

__attribute__((used)) static inline bool idr_is_empty(const struct idr *idr)
{
 return radix_tree_empty(&idr->idr_rt) &&
  radix_tree_tagged(&idr->idr_rt, IDR_FREE);
}
