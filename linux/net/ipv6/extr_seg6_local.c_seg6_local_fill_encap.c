
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct seg6_local_lwt {TYPE_1__* desc; int action; } ;
struct seg6_action_param {int (* put ) (struct sk_buff*,struct seg6_local_lwt*) ;} ;
struct lwtunnel_state {int dummy; } ;
struct TYPE_2__ {int attrs; } ;


 int EMSGSIZE ;
 int SEG6_LOCAL_ACTION ;
 int SEG6_LOCAL_MAX ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 struct seg6_action_param* seg6_action_params ;
 struct seg6_local_lwt* seg6_local_lwtunnel (struct lwtunnel_state*) ;
 int stub1 (struct sk_buff*,struct seg6_local_lwt*) ;

__attribute__((used)) static int seg6_local_fill_encap(struct sk_buff *skb,
     struct lwtunnel_state *lwt)
{
 struct seg6_local_lwt *slwt = seg6_local_lwtunnel(lwt);
 struct seg6_action_param *param;
 int i, err;

 if (nla_put_u32(skb, SEG6_LOCAL_ACTION, slwt->action))
  return -EMSGSIZE;

 for (i = 0; i < SEG6_LOCAL_MAX + 1; i++) {
  if (slwt->desc->attrs & (1 << i)) {
   param = &seg6_action_params[i];
   err = param->put(skb, slwt);
   if (err < 0)
    return err;
  }
 }

 return 0;
}
