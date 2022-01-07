
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int type; TYPE_1__* ops; } ;
struct net_proto_family {int (* create ) (struct net*,struct socket*,int,int) ;int owner; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int comm; } ;
struct TYPE_3__ {int owner; } ;


 int EAFNOSUPPORT ;
 int EINVAL ;
 int ENFILE ;
 int NPROTO ;
 int PF_INET ;
 int PF_PACKET ;
 int SOCK_MAX ;
 int SOCK_PACKET ;
 TYPE_2__* current ;
 int module_put (int ) ;
 int * net_families ;
 int net_warn_ratelimited (char*) ;
 int pr_info_once (char*,int ) ;
 int * rcu_access_pointer (int ) ;
 struct net_proto_family* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int request_module (char*,int) ;
 int security_socket_create (int,int,int,int) ;
 int security_socket_post_create (struct socket*,int,int,int,int) ;
 struct socket* sock_alloc () ;
 int sock_release (struct socket*) ;
 int stub1 (struct net*,struct socket*,int,int) ;
 int try_module_get (int ) ;

int __sock_create(struct net *net, int family, int type, int protocol,
    struct socket **res, int kern)
{
 int err;
 struct socket *sock;
 const struct net_proto_family *pf;




 if (family < 0 || family >= NPROTO)
  return -EAFNOSUPPORT;
 if (type < 0 || type >= SOCK_MAX)
  return -EINVAL;






 if (family == PF_INET && type == SOCK_PACKET) {
  pr_info_once("%s uses obsolete (PF_INET,SOCK_PACKET)\n",
        current->comm);
  family = PF_PACKET;
 }

 err = security_socket_create(family, type, protocol, kern);
 if (err)
  return err;






 sock = sock_alloc();
 if (!sock) {
  net_warn_ratelimited("socket: no more sockets\n");
  return -ENFILE;

 }

 sock->type = type;
 rcu_read_lock();
 pf = rcu_dereference(net_families[family]);
 err = -EAFNOSUPPORT;
 if (!pf)
  goto out_release;





 if (!try_module_get(pf->owner))
  goto out_release;


 rcu_read_unlock();

 err = pf->create(net, sock, protocol, kern);
 if (err < 0)
  goto out_module_put;





 if (!try_module_get(sock->ops->owner))
  goto out_module_busy;





 module_put(pf->owner);
 err = security_socket_post_create(sock, family, type, protocol, kern);
 if (err)
  goto out_sock_release;
 *res = sock;

 return 0;

out_module_busy:
 err = -EAFNOSUPPORT;
out_module_put:
 sock->ops = ((void*)0);
 module_put(pf->owner);
out_sock_release:
 sock_release(sock);
 return err;

out_release:
 rcu_read_unlock();
 goto out_sock_release;
}
