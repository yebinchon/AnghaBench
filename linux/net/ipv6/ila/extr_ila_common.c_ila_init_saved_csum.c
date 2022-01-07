
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int v64; } ;
struct ila_params {TYPE_1__ locator_match; int locator; int csum_diff; } ;
typedef int __be32 ;


 int compute_csum_diff8 (int *,int *) ;

void ila_init_saved_csum(struct ila_params *p)
{
 if (!p->locator_match.v64)
  return;

 p->csum_diff = compute_csum_diff8(
    (__be32 *)&p->locator,
    (__be32 *)&p->locator_match);
}
