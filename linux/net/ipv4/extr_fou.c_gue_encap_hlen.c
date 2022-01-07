
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {int dummy; } ;
struct ip_tunnel_encap {int flags; } ;
struct guehdr {int dummy; } ;


 size_t GUE_LEN_PRIV ;
 scalar_t__ GUE_PLEN_REMCSUM ;
 int TUNNEL_ENCAP_FLAG_REMCSUM ;

size_t gue_encap_hlen(struct ip_tunnel_encap *e)
{
 size_t len;
 bool need_priv = 0;

 len = sizeof(struct udphdr) + sizeof(struct guehdr);

 if (e->flags & TUNNEL_ENCAP_FLAG_REMCSUM) {
  len += GUE_PLEN_REMCSUM;
  need_priv = 1;
 }

 len += need_priv ? GUE_LEN_PRIV : 0;

 return len;
}
