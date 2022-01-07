
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwtunnel_state {int dummy; } ;
struct ip_tunnel_info {int dummy; } ;


 int lwt_tun_info (struct lwtunnel_state*) ;
 int memcmp (int ,int ,int) ;

__attribute__((used)) static int ip_tun_cmp_encap(struct lwtunnel_state *a, struct lwtunnel_state *b)
{
 return memcmp(lwt_tun_info(a), lwt_tun_info(b),
        sizeof(struct ip_tunnel_info));
}
