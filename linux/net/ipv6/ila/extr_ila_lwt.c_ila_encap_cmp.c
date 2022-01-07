
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lwtunnel_state {int dummy; } ;
struct TYPE_2__ {scalar_t__ v64; } ;
struct ila_params {TYPE_1__ locator; } ;


 struct ila_params* ila_params_lwtunnel (struct lwtunnel_state*) ;

__attribute__((used)) static int ila_encap_cmp(struct lwtunnel_state *a, struct lwtunnel_state *b)
{
 struct ila_params *a_p = ila_params_lwtunnel(a);
 struct ila_params *b_p = ila_params_lwtunnel(b);

 return (a_p->locator.v64 != b_p->locator.v64);
}
