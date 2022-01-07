
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int sk; struct net* net; int (* okfn ) (struct net*,int ,struct sk_buff*) ;int hook; int pf; } ;
struct nf_queue_entry {unsigned int hook_index; TYPE_1__ state; struct sk_buff* skb; } ;
struct nf_hook_entry {int dummy; } ;
struct nf_hook_entries {unsigned int num_hook_entries; struct nf_hook_entry* hooks; } ;
struct net {int dummy; } ;



 unsigned int NF_DROP ;

 unsigned int NF_REPEAT ;


 unsigned int NF_VERDICT_MASK ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int kfree (struct nf_queue_entry*) ;
 int kfree_skb (struct sk_buff*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 struct nf_hook_entries* nf_hook_entries_head (struct net const*,int ,int ) ;
 unsigned int nf_hook_entry_hookfn (struct nf_hook_entry const*,struct sk_buff*,TYPE_1__*) ;
 unsigned int nf_iterate (struct sk_buff*,TYPE_1__*,struct nf_hook_entries const*,unsigned int*) ;
 int nf_queue (struct sk_buff*,TYPE_1__*,unsigned int,unsigned int) ;
 int nf_queue_entry_release_refs (struct nf_queue_entry*) ;
 scalar_t__ nf_reroute (struct sk_buff*,struct nf_queue_entry*) ;
 int stub1 (struct net*,int ,struct sk_buff*) ;

void nf_reinject(struct nf_queue_entry *entry, unsigned int verdict)
{
 const struct nf_hook_entry *hook_entry;
 const struct nf_hook_entries *hooks;
 struct sk_buff *skb = entry->skb;
 const struct net *net;
 unsigned int i;
 int err;
 u8 pf;

 net = entry->state.net;
 pf = entry->state.pf;

 hooks = nf_hook_entries_head(net, pf, entry->state.hook);

 nf_queue_entry_release_refs(entry);

 i = entry->hook_index;
 if (WARN_ON_ONCE(!hooks || i >= hooks->num_hook_entries)) {
  kfree_skb(skb);
  kfree(entry);
  return;
 }

 hook_entry = &hooks->hooks[i];


 if (verdict == NF_REPEAT)
  verdict = nf_hook_entry_hookfn(hook_entry, skb, &entry->state);

 if (verdict == 131) {
  if (nf_reroute(skb, entry) < 0)
   verdict = NF_DROP;
 }

 if (verdict == 131) {
next_hook:
  ++i;
  verdict = nf_iterate(skb, &entry->state, hooks, &i);
 }

 switch (verdict & NF_VERDICT_MASK) {
 case 131:
 case 128:
  local_bh_disable();
  entry->state.okfn(entry->state.net, entry->state.sk, skb);
  local_bh_enable();
  break;
 case 130:
  err = nf_queue(skb, &entry->state, i, verdict);
  if (err == 1)
   goto next_hook;
  break;
 case 129:
  break;
 default:
  kfree_skb(skb);
 }

 kfree(entry);
}
