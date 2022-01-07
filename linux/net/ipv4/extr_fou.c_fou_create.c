
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tunnel_cfg ;
struct udp_tunnel_sock_cfg {int encap_type; int gro_complete; int gro_receive; int encap_rcv; int * encap_destroy; struct fou* sk_user_data; } ;
struct socket {struct sock* sk; } ;
struct sock {int sk_allocation; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int family; int local_udp_port; } ;
struct fou_cfg {int type; int protocol; int flags; TYPE_1__ udp_config; } ;
struct fou {int type; int protocol; struct socket* sock; int flags; int family; int port; } ;


 int EINVAL ;
 int ENOMEM ;


 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int fou_add_to_port_list (struct net*,struct fou*,struct fou_cfg*) ;
 int fou_gro_complete ;
 int fou_gro_receive ;
 int fou_udp_recv ;
 int gue_gro_complete ;
 int gue_gro_receive ;
 int gue_udp_recv ;
 int kfree (struct fou*) ;
 struct fou* kzalloc (int,int ) ;
 int memset (struct udp_tunnel_sock_cfg*,int ,int) ;
 int setup_udp_tunnel_sock (struct net*,struct socket*,struct udp_tunnel_sock_cfg*) ;
 int udp_sock_create (struct net*,TYPE_1__*,struct socket**) ;
 int udp_tunnel_sock_release (struct socket*) ;

__attribute__((used)) static int fou_create(struct net *net, struct fou_cfg *cfg,
        struct socket **sockp)
{
 struct socket *sock = ((void*)0);
 struct fou *fou = ((void*)0);
 struct sock *sk;
 struct udp_tunnel_sock_cfg tunnel_cfg;
 int err;


 err = udp_sock_create(net, &cfg->udp_config, &sock);
 if (err < 0)
  goto error;


 fou = kzalloc(sizeof(*fou), GFP_KERNEL);
 if (!fou) {
  err = -ENOMEM;
  goto error;
 }

 sk = sock->sk;

 fou->port = cfg->udp_config.local_udp_port;
 fou->family = cfg->udp_config.family;
 fou->flags = cfg->flags;
 fou->type = cfg->type;
 fou->sock = sock;

 memset(&tunnel_cfg, 0, sizeof(tunnel_cfg));
 tunnel_cfg.encap_type = 1;
 tunnel_cfg.sk_user_data = fou;
 tunnel_cfg.encap_destroy = ((void*)0);


 switch (cfg->type) {
 case 129:
  tunnel_cfg.encap_rcv = fou_udp_recv;
  tunnel_cfg.gro_receive = fou_gro_receive;
  tunnel_cfg.gro_complete = fou_gro_complete;
  fou->protocol = cfg->protocol;
  break;
 case 128:
  tunnel_cfg.encap_rcv = gue_udp_recv;
  tunnel_cfg.gro_receive = gue_gro_receive;
  tunnel_cfg.gro_complete = gue_gro_complete;
  break;
 default:
  err = -EINVAL;
  goto error;
 }

 setup_udp_tunnel_sock(net, sock, &tunnel_cfg);

 sk->sk_allocation = GFP_ATOMIC;

 err = fou_add_to_port_list(net, fou, cfg);
 if (err)
  goto error;

 if (sockp)
  *sockp = sock;

 return 0;

error:
 kfree(fou);
 if (sock)
  udp_tunnel_sock_release(sock);

 return err;
}
