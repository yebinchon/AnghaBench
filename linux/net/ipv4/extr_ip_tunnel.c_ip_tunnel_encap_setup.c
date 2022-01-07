
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip_tunnel_encap {int flags; int dport; int sport; int type; } ;
struct TYPE_2__ {int flags; int dport; int sport; int type; } ;
struct ip_tunnel {int encap_hlen; int hlen; int tun_hlen; TYPE_1__ encap; } ;


 int ip_encap_hlen (struct ip_tunnel_encap*) ;
 int memset (TYPE_1__*,int ,int) ;

int ip_tunnel_encap_setup(struct ip_tunnel *t,
     struct ip_tunnel_encap *ipencap)
{
 int hlen;

 memset(&t->encap, 0, sizeof(t->encap));

 hlen = ip_encap_hlen(ipencap);
 if (hlen < 0)
  return hlen;

 t->encap.type = ipencap->type;
 t->encap.sport = ipencap->sport;
 t->encap.dport = ipencap->dport;
 t->encap.flags = ipencap->flags;

 t->encap_hlen = hlen;
 t->hlen = t->encap_hlen + t->tun_hlen;

 return 0;
}
