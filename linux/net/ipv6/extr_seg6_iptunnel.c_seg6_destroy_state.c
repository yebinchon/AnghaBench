
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lwtunnel_state {int dummy; } ;
struct TYPE_2__ {int cache; } ;


 int dst_cache_destroy (int *) ;
 TYPE_1__* seg6_lwt_lwtunnel (struct lwtunnel_state*) ;

__attribute__((used)) static void seg6_destroy_state(struct lwtunnel_state *lwt)
{
 dst_cache_destroy(&seg6_lwt_lwtunnel(lwt)->cache);
}
