
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sadb_msg {int sadb_msg_errno; scalar_t__ sadb_msg_seq; } ;
struct TYPE_3__ {int (* dump ) (struct pfkey_sock*) ;TYPE_2__* skb; } ;
struct pfkey_sock {int dump_lock; TYPE_1__ dump; int sk; } ;
struct TYPE_4__ {scalar_t__ data; } ;


 int BROADCAST_ONE ;
 int ENOBUFS ;
 int GFP_ATOMIC ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pfkey_broadcast (TYPE_2__*,int ,int ,int *,int ) ;
 int pfkey_can_dump (int *) ;
 int pfkey_terminate_dump (struct pfkey_sock*) ;
 int sock_net (int *) ;
 int stub1 (struct pfkey_sock*) ;

__attribute__((used)) static int pfkey_do_dump(struct pfkey_sock *pfk)
{
 struct sadb_msg *hdr;
 int rc;

 mutex_lock(&pfk->dump_lock);
 if (!pfk->dump.dump) {
  rc = 0;
  goto out;
 }

 rc = pfk->dump.dump(pfk);
 if (rc == -ENOBUFS) {
  rc = 0;
  goto out;
 }

 if (pfk->dump.skb) {
  if (!pfkey_can_dump(&pfk->sk)) {
   rc = 0;
   goto out;
  }

  hdr = (struct sadb_msg *) pfk->dump.skb->data;
  hdr->sadb_msg_seq = 0;
  hdr->sadb_msg_errno = rc;
  pfkey_broadcast(pfk->dump.skb, GFP_ATOMIC, BROADCAST_ONE,
    &pfk->sk, sock_net(&pfk->sk));
  pfk->dump.skb = ((void*)0);
 }

 pfkey_terminate_dump(pfk);

out:
 mutex_unlock(&pfk->dump_lock);
 return rc;
}
