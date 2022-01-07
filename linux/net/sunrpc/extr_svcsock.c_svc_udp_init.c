
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int xpt_flags; } ;
struct svc_sock {TYPE_3__* sk_sock; TYPE_1__* sk_sk; TYPE_2__ sk_xprt; } ;
struct svc_serv {int dummy; } ;
typedef int one ;
struct TYPE_6__ {int sk; } ;
struct TYPE_4__ {int sk_family; int sk_write_space; int sk_data_ready; } ;




 int BUG () ;
 int IPV6_RECVPKTINFO ;
 int IP_PKTINFO ;
 int SOL_IP ;
 int SOL_IPV6 ;
 int XPT_CACHE_AUTH ;
 int XPT_CHNGBUF ;
 int XPT_DATA ;
 int clear_bit (int ,int *) ;
 int dprintk (char*,int) ;
 int kernel_setsockopt (TYPE_3__*,int,int,char*,int) ;
 int set_bit (int ,int *) ;
 int sock_net (int ) ;
 int svc_data_ready ;
 int svc_sock_setbufsize (struct svc_sock*,int) ;
 int svc_udp_class ;
 int svc_write_space ;
 int svc_xprt_init (int ,int *,TYPE_2__*,struct svc_serv*) ;

__attribute__((used)) static void svc_udp_init(struct svc_sock *svsk, struct svc_serv *serv)
{
 int err, level, optname, one = 1;

 svc_xprt_init(sock_net(svsk->sk_sock->sk), &svc_udp_class,
        &svsk->sk_xprt, serv);
 clear_bit(XPT_CACHE_AUTH, &svsk->sk_xprt.xpt_flags);
 svsk->sk_sk->sk_data_ready = svc_data_ready;
 svsk->sk_sk->sk_write_space = svc_write_space;





 svc_sock_setbufsize(svsk, 3);


 set_bit(XPT_DATA, &svsk->sk_xprt.xpt_flags);
 set_bit(XPT_CHNGBUF, &svsk->sk_xprt.xpt_flags);


 switch (svsk->sk_sk->sk_family) {
 case 129:
  level = SOL_IP;
  optname = IP_PKTINFO;
  break;
 case 128:
  level = SOL_IPV6;
  optname = IPV6_RECVPKTINFO;
  break;
 default:
  BUG();
 }
 err = kernel_setsockopt(svsk->sk_sock, level, optname,
     (char *)&one, sizeof(one));
 dprintk("svc: kernel_setsockopt returned %d\n", err);
}
