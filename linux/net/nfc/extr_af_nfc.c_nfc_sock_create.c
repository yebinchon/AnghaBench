
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_3__ {int (* create ) (struct net*,struct socket*,TYPE_1__*,int) ;int owner; } ;


 int EAFNOSUPPORT ;
 int EINVAL ;
 int EPROTONOSUPPORT ;
 int NFC_SOCKPROTO_MAX ;
 struct net init_net ;
 int module_put (int ) ;
 TYPE_1__** proto_tab ;
 int proto_tab_lock ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int stub1 (struct net*,struct socket*,TYPE_1__*,int) ;
 scalar_t__ try_module_get (int ) ;

__attribute__((used)) static int nfc_sock_create(struct net *net, struct socket *sock, int proto,
      int kern)
{
 int rc = -EPROTONOSUPPORT;

 if (net != &init_net)
  return -EAFNOSUPPORT;

 if (proto < 0 || proto >= NFC_SOCKPROTO_MAX)
  return -EINVAL;

 read_lock(&proto_tab_lock);
 if (proto_tab[proto] && try_module_get(proto_tab[proto]->owner)) {
  rc = proto_tab[proto]->create(net, sock, proto_tab[proto], kern);
  module_put(proto_tab[proto]->owner);
 }
 read_unlock(&proto_tab_lock);

 return rc;
}
