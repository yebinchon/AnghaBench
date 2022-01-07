
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_tunnel_key_params {scalar_t__ tcft_action; TYPE_1__* tcft_enc_metadata; } ;
struct TYPE_2__ {int dst; } ;


 scalar_t__ TCA_TUNNEL_KEY_ACT_SET ;
 int dst_release (int *) ;
 int kfree_rcu (struct tcf_tunnel_key_params*,int ) ;
 int rcu ;

__attribute__((used)) static void tunnel_key_release_params(struct tcf_tunnel_key_params *p)
{
 if (!p)
  return;
 if (p->tcft_action == TCA_TUNNEL_KEY_ACT_SET)
  dst_release(&p->tcft_enc_metadata->dst);

 kfree_rcu(p, rcu);
}
