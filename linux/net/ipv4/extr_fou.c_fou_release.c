
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct fou {int list; struct socket* sock; } ;


 int kfree_rcu (struct fou*,int ) ;
 int list_del (int *) ;
 int rcu ;
 int udp_tunnel_sock_release (struct socket*) ;

__attribute__((used)) static void fou_release(struct fou *fou)
{
 struct socket *sock = fou->sock;

 list_del(&fou->list);
 udp_tunnel_sock_release(sock);

 kfree_rcu(fou, rcu);
}
