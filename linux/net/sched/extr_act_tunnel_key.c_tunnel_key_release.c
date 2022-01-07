
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_tunnel_key_params {int dummy; } ;
struct tcf_tunnel_key {int params; } ;
struct tc_action {int dummy; } ;


 struct tcf_tunnel_key_params* rcu_dereference_protected (int ,int) ;
 struct tcf_tunnel_key* to_tunnel_key (struct tc_action*) ;
 int tunnel_key_release_params (struct tcf_tunnel_key_params*) ;

__attribute__((used)) static void tunnel_key_release(struct tc_action *a)
{
 struct tcf_tunnel_key *t = to_tunnel_key(a);
 struct tcf_tunnel_key_params *params;

 params = rcu_dereference_protected(t->params, 1);
 tunnel_key_release_params(params);
}
