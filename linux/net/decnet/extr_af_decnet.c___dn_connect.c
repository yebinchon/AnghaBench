
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {scalar_t__ state; } ;
struct sockaddr_dn {scalar_t__ sdn_family; int sdn_flags; } ;
struct sock {int sk_route_caps; int sk_dst_cache; int sk_bound_dev_if; struct socket* sk_socket; } ;
struct flowidn {int flowidn_proto; void* saddr; void* daddr; int flowidn_oif; } ;
struct dst_entry {TYPE_1__* dev; } ;
struct dn_scp {scalar_t__ state; int segsize_loc; int addr; int peer; } ;
typedef int fld ;
struct TYPE_2__ {int features; } ;


 scalar_t__ AF_DECnet ;
 int DNPROTO_NSP ;
 scalar_t__ DN_CC ;
 scalar_t__ DN_CI ;
 scalar_t__ DN_O ;
 scalar_t__ DN_RUN ;
 struct dn_scp* DN_SK (struct sock*) ;
 int ECONNREFUSED ;
 int EHOSTUNREACH ;
 int EINPROGRESS ;
 int EINVAL ;
 int EISCONN ;
 int NSP_CI ;
 int SDF_WILD ;
 int SOCK_ZAPPED ;
 scalar_t__ SS_CONNECTED ;
 scalar_t__ SS_CONNECTING ;
 scalar_t__ SS_UNCONNECTED ;
 struct dst_entry* __sk_dst_get (struct sock*) ;
 int dn_auto_bind (struct socket*) ;
 int dn_nsp_send_conninit (struct sock*,int ) ;
 scalar_t__ dn_route_output_sock (int *,struct flowidn*,struct sock*,int) ;
 void* dn_saddr2dn (int *) ;
 int dn_sk_ports_copy (struct flowidn*,struct dn_scp*) ;
 int dn_wait_run (struct sock*,long*) ;
 int dst_metric_advmss (struct dst_entry*) ;
 int memcpy (int *,struct sockaddr_dn*,int) ;
 int memset (struct flowidn*,int ,int) ;
 scalar_t__ sock_flag (struct sock*,int ) ;

__attribute__((used)) static int __dn_connect(struct sock *sk, struct sockaddr_dn *addr, int addrlen, long *timeo, int flags)
{
 struct socket *sock = sk->sk_socket;
 struct dn_scp *scp = DN_SK(sk);
 int err = -EISCONN;
 struct flowidn fld;
 struct dst_entry *dst;

 if (sock->state == SS_CONNECTED)
  goto out;

 if (sock->state == SS_CONNECTING) {
  err = 0;
  if (scp->state == DN_RUN) {
   sock->state = SS_CONNECTED;
   goto out;
  }
  err = -ECONNREFUSED;
  if (scp->state != DN_CI && scp->state != DN_CC) {
   sock->state = SS_UNCONNECTED;
   goto out;
  }
  return dn_wait_run(sk, timeo);
 }

 err = -EINVAL;
 if (scp->state != DN_O)
  goto out;

 if (addr == ((void*)0) || addrlen != sizeof(struct sockaddr_dn))
  goto out;
 if (addr->sdn_family != AF_DECnet)
  goto out;
 if (addr->sdn_flags & SDF_WILD)
  goto out;

 if (sock_flag(sk, SOCK_ZAPPED)) {
  err = dn_auto_bind(sk->sk_socket);
  if (err)
   goto out;
 }

 memcpy(&scp->peer, addr, sizeof(struct sockaddr_dn));

 err = -EHOSTUNREACH;
 memset(&fld, 0, sizeof(fld));
 fld.flowidn_oif = sk->sk_bound_dev_if;
 fld.daddr = dn_saddr2dn(&scp->peer);
 fld.saddr = dn_saddr2dn(&scp->addr);
 dn_sk_ports_copy(&fld, scp);
 fld.flowidn_proto = DNPROTO_NSP;
 if (dn_route_output_sock(&sk->sk_dst_cache, &fld, sk, flags) < 0)
  goto out;
 dst = __sk_dst_get(sk);
 sk->sk_route_caps = dst->dev->features;
 sock->state = SS_CONNECTING;
 scp->state = DN_CI;
 scp->segsize_loc = dst_metric_advmss(dst);

 dn_nsp_send_conninit(sk, NSP_CI);
 err = -EINPROGRESS;
 if (*timeo) {
  err = dn_wait_run(sk, timeo);
 }
out:
 return err;
}
