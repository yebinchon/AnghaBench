
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2tp_tunnel {int sock; } ;


 int sock_put (int ) ;

void l2tp_tunnel_free(struct l2tp_tunnel *tunnel)
{
 sock_put(tunnel->sock);

}
