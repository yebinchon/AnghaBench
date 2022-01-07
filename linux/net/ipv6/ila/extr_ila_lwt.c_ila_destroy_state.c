
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lwtunnel_state {int dummy; } ;
struct TYPE_2__ {int dst_cache; } ;


 int dst_cache_destroy (int *) ;
 TYPE_1__* ila_lwt_lwtunnel (struct lwtunnel_state*) ;

__attribute__((used)) static void ila_destroy_state(struct lwtunnel_state *lwt)
{
 dst_cache_destroy(&ila_lwt_lwtunnel(lwt)->dst_cache);
}
