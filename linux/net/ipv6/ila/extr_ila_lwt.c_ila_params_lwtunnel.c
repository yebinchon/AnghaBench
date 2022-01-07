
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lwtunnel_state {int dummy; } ;
struct ila_params {int dummy; } ;
struct TYPE_2__ {struct ila_params p; } ;


 TYPE_1__* ila_lwt_lwtunnel (struct lwtunnel_state*) ;

__attribute__((used)) static inline struct ila_params *ila_params_lwtunnel(
 struct lwtunnel_state *lwt)
{
 return &ila_lwt_lwtunnel(lwt)->p;
}
