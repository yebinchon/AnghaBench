
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_tunnel_info {int dummy; } ;


 int kfree (struct ip_tunnel_info*) ;

__attribute__((used)) static void tcf_tunnel_encap_put_tunnel(void *priv)
{
 struct ip_tunnel_info *tunnel = priv;

 kfree(tunnel);
}
