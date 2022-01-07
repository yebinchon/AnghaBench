
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int net; } ;
struct nf_queue_entry {int skb; TYPE_1__ state; } ;
struct nf_ct_hook {int (* update ) (int ,int ) ;} ;


 unsigned int NF_ACCEPT ;
 unsigned int NF_DROP ;
 unsigned int NF_REPEAT ;
 unsigned int NF_STOP ;
 int nf_ct_hook ;
 int nf_reinject (struct nf_queue_entry*,unsigned int) ;
 struct nf_ct_hook* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void nfqnl_reinject(struct nf_queue_entry *entry, unsigned int verdict)
{
 struct nf_ct_hook *ct_hook;
 int err;

 if (verdict == NF_ACCEPT ||
     verdict == NF_REPEAT ||
     verdict == NF_STOP) {
  rcu_read_lock();
  ct_hook = rcu_dereference(nf_ct_hook);
  if (ct_hook) {
   err = ct_hook->update(entry->state.net, entry->skb);
   if (err < 0)
    verdict = NF_DROP;
  }
  rcu_read_unlock();
 }
 nf_reinject(entry, verdict);
}
