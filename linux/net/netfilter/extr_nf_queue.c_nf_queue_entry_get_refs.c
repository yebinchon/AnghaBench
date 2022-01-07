
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_hook_state {scalar_t__ sk; scalar_t__ out; scalar_t__ in; } ;
struct nf_queue_entry {int skb; struct nf_hook_state state; } ;


 int dev_hold (scalar_t__) ;
 int nf_queue_entry_get_br_nf_refs (int ) ;
 int sock_hold (scalar_t__) ;

void nf_queue_entry_get_refs(struct nf_queue_entry *entry)
{
 struct nf_hook_state *state = &entry->state;

 if (state->in)
  dev_hold(state->in);
 if (state->out)
  dev_hold(state->out);
 if (state->sk)
  sock_hold(state->sk);

 nf_queue_entry_get_br_nf_refs(entry->skb);
}
