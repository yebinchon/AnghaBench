
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {int sadb_msg_pid; int sadb_msg_version; } ;
struct TYPE_3__ {int policy; } ;
struct TYPE_4__ {TYPE_1__ u; int done; int * dump; int msg_portid; int msg_version; } ;
struct pfkey_sock {int dump_lock; TYPE_2__ dump; } ;


 int EBUSY ;
 int XFRM_POLICY_TYPE_MAIN ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pfkey_do_dump (struct pfkey_sock*) ;
 int * pfkey_dump_sp ;
 int pfkey_dump_sp_done ;
 struct pfkey_sock* pfkey_sk (struct sock*) ;
 int xfrm_policy_walk_init (int *,int ) ;

__attribute__((used)) static int pfkey_spddump(struct sock *sk, struct sk_buff *skb, const struct sadb_msg *hdr, void * const *ext_hdrs)
{
 struct pfkey_sock *pfk = pfkey_sk(sk);

 mutex_lock(&pfk->dump_lock);
 if (pfk->dump.dump != ((void*)0)) {
  mutex_unlock(&pfk->dump_lock);
  return -EBUSY;
 }

 pfk->dump.msg_version = hdr->sadb_msg_version;
 pfk->dump.msg_portid = hdr->sadb_msg_pid;
 pfk->dump.dump = pfkey_dump_sp;
 pfk->dump.done = pfkey_dump_sp_done;
 xfrm_policy_walk_init(&pfk->dump.u.policy, XFRM_POLICY_TYPE_MAIN);
 mutex_unlock(&pfk->dump_lock);

 return pfkey_do_dump(pfk);
}
