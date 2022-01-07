
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_destruct; } ;
struct pep_sock {int init_enable; scalar_t__ aligned; int tx_fc; int rx_fc; scalar_t__ rx_credits; int pipe_handle; scalar_t__ peer_type; scalar_t__ ifindex; int tx_credits; int ctrlreq_queue; int * listener; int hlist; } ;


 int INIT_HLIST_HEAD (int *) ;
 int PN_LEGACY_FLOW_CONTROL ;
 int PN_PIPE_INVALID_HANDLE ;
 int atomic_set (int *,int ) ;
 struct pep_sock* pep_sk (struct sock*) ;
 int pipe_destruct ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static int pep_init(struct sock *sk)
{
 struct pep_sock *pn = pep_sk(sk);

 sk->sk_destruct = pipe_destruct;
 INIT_HLIST_HEAD(&pn->hlist);
 pn->listener = ((void*)0);
 skb_queue_head_init(&pn->ctrlreq_queue);
 atomic_set(&pn->tx_credits, 0);
 pn->ifindex = 0;
 pn->peer_type = 0;
 pn->pipe_handle = PN_PIPE_INVALID_HANDLE;
 pn->rx_credits = 0;
 pn->rx_fc = pn->tx_fc = PN_LEGACY_FLOW_CONTROL;
 pn->init_enable = 1;
 pn->aligned = 0;
 return 0;
}
