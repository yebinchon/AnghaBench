
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tipc_topsrv {struct socket* listener; int net; } ;
struct socket {TYPE_3__* ops; struct sock* sk; } ;
struct TYPE_5__ {void* upper; void* lower; void* type; } ;
struct TYPE_6__ {TYPE_1__ nameseq; } ;
struct sockaddr_tipc {int scope; TYPE_2__ addr; int addrtype; int family; } ;
struct sockaddr {int dummy; } ;
struct sock {TYPE_4__* sk_prot_creator; int sk_callback_lock; struct tipc_topsrv* sk_user_data; int sk_data_ready; } ;
typedef int saddr ;
typedef int imp ;
struct TYPE_8__ {int owner; } ;
struct TYPE_7__ {int owner; } ;


 int AF_TIPC ;
 int EINVAL ;
 int SOCK_SEQPACKET ;
 int SOL_TIPC ;
 int TIPC_ADDR_NAMESEQ ;
 int TIPC_CRITICAL_IMPORTANCE ;
 int TIPC_IMPORTANCE ;
 int TIPC_NODE_SCOPE ;
 void* TIPC_TOP_SRV ;
 int kernel_bind (struct socket*,struct sockaddr*,int) ;
 int kernel_listen (struct socket*,int ) ;
 int kernel_setsockopt (struct socket*,int ,int ,char*,int) ;
 int module_put (int ) ;
 int sock_create_kern (int ,int ,int ,int ,struct socket**) ;
 int sock_release (struct socket*) ;
 int tipc_topsrv_listener_data_ready ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int tipc_topsrv_create_listener(struct tipc_topsrv *srv)
{
 int imp = TIPC_CRITICAL_IMPORTANCE;
 struct socket *lsock = ((void*)0);
 struct sockaddr_tipc saddr;
 struct sock *sk;
 int rc;

 rc = sock_create_kern(srv->net, AF_TIPC, SOCK_SEQPACKET, 0, &lsock);
 if (rc < 0)
  return rc;

 srv->listener = lsock;
 sk = lsock->sk;
 write_lock_bh(&sk->sk_callback_lock);
 sk->sk_data_ready = tipc_topsrv_listener_data_ready;
 sk->sk_user_data = srv;
 write_unlock_bh(&sk->sk_callback_lock);

 rc = kernel_setsockopt(lsock, SOL_TIPC, TIPC_IMPORTANCE,
          (char *)&imp, sizeof(imp));
 if (rc < 0)
  goto err;

 saddr.family = AF_TIPC;
 saddr.addrtype = TIPC_ADDR_NAMESEQ;
 saddr.addr.nameseq.type = TIPC_TOP_SRV;
 saddr.addr.nameseq.lower = TIPC_TOP_SRV;
 saddr.addr.nameseq.upper = TIPC_TOP_SRV;
 saddr.scope = TIPC_NODE_SCOPE;

 rc = kernel_bind(lsock, (struct sockaddr *)&saddr, sizeof(saddr));
 if (rc < 0)
  goto err;
 rc = kernel_listen(lsock, 0);
 if (rc < 0)
  goto err;
 module_put(lsock->ops->owner);
 module_put(sk->sk_prot_creator->owner);

 return 0;
err:
 sock_release(lsock);
 return -EINVAL;
}
