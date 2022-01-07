
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ v64; } ;
struct ila_params {int locator; int csum_diff; TYPE_1__ locator_match; } ;
struct ila_addr {int loc; } ;
typedef int __wsum ;
typedef int __be32 ;


 int compute_csum_diff8 (int *,int *) ;

__attribute__((used)) static __wsum get_csum_diff_iaddr(struct ila_addr *iaddr, struct ila_params *p)
{
 if (p->locator_match.v64)
  return p->csum_diff;
 else
  return compute_csum_diff8((__be32 *)&p->locator,
       (__be32 *)&iaddr->loc);
}
