
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwtunnel_state {int dummy; } ;
struct ip_tunnel_info {int dst_cache; } ;


 int dst_cache_destroy (int *) ;
 struct ip_tunnel_info* lwt_tun_info (struct lwtunnel_state*) ;

__attribute__((used)) static void ip_tun_destroy_state(struct lwtunnel_state *lwtstate)
{





}
