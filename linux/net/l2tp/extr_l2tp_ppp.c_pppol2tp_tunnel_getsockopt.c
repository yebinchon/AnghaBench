
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct l2tp_tunnel {int debug; int name; } ;


 int ENOPROTOOPT ;
 int L2TP_MSG_CONTROL ;

 int l2tp_info (struct l2tp_tunnel*,int ,char*,int ,int) ;

__attribute__((used)) static int pppol2tp_tunnel_getsockopt(struct sock *sk,
          struct l2tp_tunnel *tunnel,
          int optname, int *val)
{
 int err = 0;

 switch (optname) {
 case 128:
  *val = tunnel->debug;
  l2tp_info(tunnel, L2TP_MSG_CONTROL, "%s: get debug=%x\n",
     tunnel->name, tunnel->debug);
  break;

 default:
  err = -ENOPROTOOPT;
  break;
 }

 return err;
}
