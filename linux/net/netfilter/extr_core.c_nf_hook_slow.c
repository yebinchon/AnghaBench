
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_hook_state {int dummy; } ;
struct nf_hook_entries {unsigned int num_hook_entries; int * hooks; } ;


 int EPERM ;


 int NF_DROP_GETERR (unsigned int) ;

 unsigned int NF_VERDICT_MASK ;
 int kfree_skb (struct sk_buff*) ;
 unsigned int nf_hook_entry_hookfn (int *,struct sk_buff*,struct nf_hook_state*) ;
 int nf_queue (struct sk_buff*,struct nf_hook_state*,unsigned int,unsigned int) ;

int nf_hook_slow(struct sk_buff *skb, struct nf_hook_state *state,
   const struct nf_hook_entries *e, unsigned int s)
{
 unsigned int verdict;
 int ret;

 for (; s < e->num_hook_entries; s++) {
  verdict = nf_hook_entry_hookfn(&e->hooks[s], skb, state);
  switch (verdict & NF_VERDICT_MASK) {
  case 130:
   break;
  case 129:
   kfree_skb(skb);
   ret = NF_DROP_GETERR(verdict);
   if (ret == 0)
    ret = -EPERM;
   return ret;
  case 128:
   ret = nf_queue(skb, state, s, verdict);
   if (ret == 1)
    continue;
   return ret;
  default:



   return 0;
  }
 }

 return 1;
}
