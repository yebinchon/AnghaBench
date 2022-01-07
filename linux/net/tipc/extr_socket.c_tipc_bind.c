
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tipc_sock {scalar_t__ group; } ;
struct socket {struct sock* sk; } ;
struct TYPE_5__ {scalar_t__ type; int lower; int upper; } ;
struct TYPE_4__ {TYPE_2__ nameseq; } ;
struct sockaddr_tipc {scalar_t__ family; scalar_t__ addrtype; TYPE_1__ addr; int scope; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;


 scalar_t__ AF_TIPC ;
 int EACCES ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 scalar_t__ TIPC_ADDR_NAME ;
 scalar_t__ TIPC_ADDR_NAMESEQ ;
 scalar_t__ TIPC_CFG_SRV ;
 scalar_t__ TIPC_RESERVED_TYPES ;
 scalar_t__ TIPC_TOP_SRV ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 struct tipc_sock* tipc_sk (struct sock*) ;
 int tipc_sk_publish (struct tipc_sock*,int ,TYPE_2__*) ;
 int tipc_sk_withdraw (struct tipc_sock*,int ,TYPE_2__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int tipc_bind(struct socket *sock, struct sockaddr *uaddr,
       int uaddr_len)
{
 struct sock *sk = sock->sk;
 struct sockaddr_tipc *addr = (struct sockaddr_tipc *)uaddr;
 struct tipc_sock *tsk = tipc_sk(sk);
 int res = -EINVAL;

 lock_sock(sk);
 if (unlikely(!uaddr_len)) {
  res = tipc_sk_withdraw(tsk, 0, ((void*)0));
  goto exit;
 }
 if (tsk->group) {
  res = -EACCES;
  goto exit;
 }
 if (uaddr_len < sizeof(struct sockaddr_tipc)) {
  res = -EINVAL;
  goto exit;
 }
 if (addr->family != AF_TIPC) {
  res = -EAFNOSUPPORT;
  goto exit;
 }

 if (addr->addrtype == TIPC_ADDR_NAME)
  addr->addr.nameseq.upper = addr->addr.nameseq.lower;
 else if (addr->addrtype != TIPC_ADDR_NAMESEQ) {
  res = -EAFNOSUPPORT;
  goto exit;
 }

 if ((addr->addr.nameseq.type < TIPC_RESERVED_TYPES) &&
     (addr->addr.nameseq.type != TIPC_TOP_SRV) &&
     (addr->addr.nameseq.type != TIPC_CFG_SRV)) {
  res = -EACCES;
  goto exit;
 }

 res = (addr->scope >= 0) ?
  tipc_sk_publish(tsk, addr->scope, &addr->addr.nameseq) :
  tipc_sk_withdraw(tsk, -addr->scope, &addr->addr.nameseq);
exit:
 release_sock(sk);
 return res;
}
