
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xt_action_param {int hotdrop; int targinfo; TYPE_1__* target; struct nf_hook_state const* state; } ;
struct sk_buff {int len; } ;
struct nf_hook_state {unsigned int hook; int out; int in; } ;
struct ebt_table_info {char* entries; struct ebt_entries** hook_entry; struct ebt_chainstack** chainstack; int nentries; int counters; } ;
struct ebt_table {int lock; struct ebt_table_info* private; } ;
struct ebt_standard_target {int verdict; } ;
struct TYPE_4__ {TYPE_1__* target; } ;
struct ebt_entry_target {TYPE_2__ u; int data; } ;
struct ebt_entry {int dummy; } ;
struct ebt_entries {int nentries; int counter_offset; int distinguisher; int policy; scalar_t__ data; } ;
struct ebt_counter {int dummy; } ;
struct ebt_chainstack {int n; struct ebt_entry* e; struct ebt_entries* chaininfo; } ;
struct TYPE_3__ {int (* target ) (struct sk_buff*,struct xt_action_param*) ;} ;


 int ADD_COUNTER (struct ebt_counter,int ,int) ;
 struct ebt_counter* COUNTER_BASE (int ,int ,size_t) ;
 int EBT_ACCEPT ;
 int EBT_CONTINUE ;
 int EBT_DROP ;
 scalar_t__ EBT_MATCH_ITERATE (struct ebt_entry*,int ,struct sk_buff*,struct xt_action_param*) ;
 int EBT_RETURN ;
 int EBT_WATCHER_ITERATE (struct ebt_entry*,int ,struct sk_buff*,struct xt_action_param*) ;
 unsigned int NF_ACCEPT ;
 unsigned int NF_DROP ;
 scalar_t__ WARN (int,char*) ;
 scalar_t__ ebt_basic_match (struct ebt_entry*,struct sk_buff*,int ,int ) ;
 int ebt_do_match ;
 int ebt_do_watcher ;
 struct ebt_entry_target* ebt_get_target_c (struct ebt_entry*) ;
 void* ebt_next_entry (struct ebt_entry*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 size_t smp_processor_id () ;
 int stub1 (struct sk_buff*,struct xt_action_param*) ;

unsigned int ebt_do_table(struct sk_buff *skb,
     const struct nf_hook_state *state,
     struct ebt_table *table)
{
 unsigned int hook = state->hook;
 int i, nentries;
 struct ebt_entry *point;
 struct ebt_counter *counter_base, *cb_base;
 const struct ebt_entry_target *t;
 int verdict, sp = 0;
 struct ebt_chainstack *cs;
 struct ebt_entries *chaininfo;
 const char *base;
 const struct ebt_table_info *private;
 struct xt_action_param acpar;

 acpar.state = state;
 acpar.hotdrop = 0;

 read_lock_bh(&table->lock);
 private = table->private;
 cb_base = COUNTER_BASE(private->counters, private->nentries,
    smp_processor_id());
 if (private->chainstack)
  cs = private->chainstack[smp_processor_id()];
 else
  cs = ((void*)0);
 chaininfo = private->hook_entry[hook];
 nentries = private->hook_entry[hook]->nentries;
 point = (struct ebt_entry *)(private->hook_entry[hook]->data);
 counter_base = cb_base + private->hook_entry[hook]->counter_offset;

 base = private->entries;
 i = 0;
 while (i < nentries) {
  if (ebt_basic_match(point, skb, state->in, state->out))
   goto letscontinue;

  if (EBT_MATCH_ITERATE(point, ebt_do_match, skb, &acpar) != 0)
   goto letscontinue;
  if (acpar.hotdrop) {
   read_unlock_bh(&table->lock);
   return NF_DROP;
  }

  ADD_COUNTER(*(counter_base + i), skb->len, 1);




  EBT_WATCHER_ITERATE(point, ebt_do_watcher, skb, &acpar);

  t = ebt_get_target_c(point);

  if (!t->u.target->target)
   verdict = ((struct ebt_standard_target *)t)->verdict;
  else {
   acpar.target = t->u.target;
   acpar.targinfo = t->data;
   verdict = t->u.target->target(skb, &acpar);
  }
  if (verdict == EBT_ACCEPT) {
   read_unlock_bh(&table->lock);
   return NF_ACCEPT;
  }
  if (verdict == EBT_DROP) {
   read_unlock_bh(&table->lock);
   return NF_DROP;
  }
  if (verdict == EBT_RETURN) {
letsreturn:
   if (WARN(sp == 0, "RETURN on base chain")) {

    goto letscontinue;
   }

   sp--;

   i = cs[sp].n;
   chaininfo = cs[sp].chaininfo;
   nentries = chaininfo->nentries;
   point = cs[sp].e;
   counter_base = cb_base +
      chaininfo->counter_offset;
   continue;
  }
  if (verdict == EBT_CONTINUE)
   goto letscontinue;

  if (WARN(verdict < 0, "bogus standard verdict\n")) {
   read_unlock_bh(&table->lock);
   return NF_DROP;
  }


  cs[sp].n = i + 1;
  cs[sp].chaininfo = chaininfo;
  cs[sp].e = ebt_next_entry(point);
  i = 0;
  chaininfo = (struct ebt_entries *) (base + verdict);

  if (WARN(chaininfo->distinguisher, "jump to non-chain\n")) {
   read_unlock_bh(&table->lock);
   return NF_DROP;
  }

  nentries = chaininfo->nentries;
  point = (struct ebt_entry *)chaininfo->data;
  counter_base = cb_base + chaininfo->counter_offset;
  sp++;
  continue;
letscontinue:
  point = ebt_next_entry(point);
  i++;
 }


 if (chaininfo->policy == EBT_RETURN)
  goto letsreturn;
 if (chaininfo->policy == EBT_ACCEPT) {
  read_unlock_bh(&table->lock);
  return NF_ACCEPT;
 }
 read_unlock_bh(&table->lock);
 return NF_DROP;
}
