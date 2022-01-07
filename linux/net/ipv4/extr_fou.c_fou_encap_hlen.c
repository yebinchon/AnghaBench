
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {int dummy; } ;
struct ip_tunnel_encap {int dummy; } ;



size_t fou_encap_hlen(struct ip_tunnel_encap *e)
{
 return sizeof(struct udphdr);
}
