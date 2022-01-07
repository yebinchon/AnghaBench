
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_hook_state {int pf; int net; } ;


 int IPPROTO_UDP ;
 int nf_l4proto_log_invalid (struct sk_buff const*,int ,int ,int ,char*,char const*) ;

__attribute__((used)) static void udp_error_log(const struct sk_buff *skb,
     const struct nf_hook_state *state,
     const char *msg)
{
 nf_l4proto_log_invalid(skb, state->net, state->pf,
          IPPROTO_UDP, "%s", msg);
}
