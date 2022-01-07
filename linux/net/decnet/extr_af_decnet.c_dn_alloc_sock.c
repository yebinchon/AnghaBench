
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {int * ops; } ;
struct sock {int sk_no_check_tx; int sk_rcvbuf; int sk_sndbuf; int sk_allocation; scalar_t__ sk_protocol; int sk_family; int sk_destruct; int sk_backlog_rcv; } ;
struct net {int dummy; } ;
struct TYPE_6__ {int acc_accl; int acc_acc; } ;
struct TYPE_5__ {void* sdn_family; } ;
struct TYPE_4__ {void* sdn_family; } ;
struct dn_scp {int numdat; int numoth; int flowrem_oth; int flowloc_oth; int services_loc; int info_loc; int multi_ireq; int keepalive; int keepalive_fxn; int * persist_fxn; scalar_t__ persist; int other_receive_queue; int other_xmit_queue; int data_xmit_queue; scalar_t__ nsp_rxtshift; int nsp_rttvar; int nsp_srtt; int snd_window; int max_window; TYPE_3__ accessdata; TYPE_2__ peer; TYPE_1__ addr; int accept_mode; scalar_t__ nonagle; scalar_t__ segsize_rem; scalar_t__ info_rem; scalar_t__ services_rem; scalar_t__ flowloc_dat; scalar_t__ flowrem_dat; void* flowloc_sw; void* flowrem_sw; scalar_t__ ackrcv_oth; scalar_t__ ackrcv_dat; scalar_t__ ackxmt_oth; scalar_t__ ackxmt_dat; int state; } ;
typedef int gfp_t ;


 int ACC_IMMED ;
 void* AF_DECnet ;
 scalar_t__ DN_MAX_NSP_DATA_HEADER ;
 int DN_O ;
 void* DN_SEND ;
 struct dn_scp* DN_SK (struct sock*) ;
 int HZ ;
 int NSP_FC_NONE ;
 int NSP_INITIAL_RTTVAR ;
 int NSP_INITIAL_SRTT ;
 int NSP_MAX_WINDOW ;
 int NSP_MIN_WINDOW ;
 int PF_DECnet ;
 int dn_destruct ;
 int dn_keepalive ;
 int dn_nsp_backlog_rcv ;
 int dn_proto ;
 int dn_proto_ops ;
 int dn_start_slow_timer (struct sock*) ;
 int memcpy (int ,char*,int) ;
 struct sock* sk_alloc (struct net*,int ,int ,int *,int) ;
 int skb_queue_head_init (int *) ;
 int sock_init_data (struct socket*,struct sock*) ;
 int * sysctl_decnet_rmem ;
 int * sysctl_decnet_wmem ;

__attribute__((used)) static struct sock *dn_alloc_sock(struct net *net, struct socket *sock, gfp_t gfp, int kern)
{
 struct dn_scp *scp;
 struct sock *sk = sk_alloc(net, PF_DECnet, gfp, &dn_proto, kern);

 if (!sk)
  goto out;

 if (sock)
  sock->ops = &dn_proto_ops;
 sock_init_data(sock, sk);

 sk->sk_backlog_rcv = dn_nsp_backlog_rcv;
 sk->sk_destruct = dn_destruct;
 sk->sk_no_check_tx = 1;
 sk->sk_family = PF_DECnet;
 sk->sk_protocol = 0;
 sk->sk_allocation = gfp;
 sk->sk_sndbuf = sysctl_decnet_wmem[1];
 sk->sk_rcvbuf = sysctl_decnet_rmem[1];


 scp = DN_SK(sk);
 scp->state = DN_O;
 scp->numdat = 1;
 scp->numoth = 1;
 scp->ackxmt_dat = 0;
 scp->ackxmt_oth = 0;
 scp->ackrcv_dat = 0;
 scp->ackrcv_oth = 0;
 scp->flowrem_sw = DN_SEND;
 scp->flowloc_sw = DN_SEND;
 scp->flowrem_dat = 0;
 scp->flowrem_oth = 1;
 scp->flowloc_dat = 0;
 scp->flowloc_oth = 1;
 scp->services_rem = 0;
 scp->services_loc = 1 | NSP_FC_NONE;
 scp->info_rem = 0;
 scp->info_loc = 0x03;
 scp->segsize_rem = 230 - DN_MAX_NSP_DATA_HEADER;
 scp->nonagle = 0;
 scp->multi_ireq = 1;
 scp->accept_mode = ACC_IMMED;
 scp->addr.sdn_family = AF_DECnet;
 scp->peer.sdn_family = AF_DECnet;
 scp->accessdata.acc_accl = 5;
 memcpy(scp->accessdata.acc_acc, "LINUX", 5);

 scp->max_window = NSP_MAX_WINDOW;
 scp->snd_window = NSP_MIN_WINDOW;
 scp->nsp_srtt = NSP_INITIAL_SRTT;
 scp->nsp_rttvar = NSP_INITIAL_RTTVAR;
 scp->nsp_rxtshift = 0;

 skb_queue_head_init(&scp->data_xmit_queue);
 skb_queue_head_init(&scp->other_xmit_queue);
 skb_queue_head_init(&scp->other_receive_queue);

 scp->persist = 0;
 scp->persist_fxn = ((void*)0);
 scp->keepalive = 10 * HZ;
 scp->keepalive_fxn = dn_keepalive;

 dn_start_slow_timer(sk);
out:
 return sk;
}
