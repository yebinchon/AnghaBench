
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcf_proto {TYPE_1__* chain; } ;
struct tcf_chain {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {int block; } ;


 int EINVAL ;
 int ENOMEM ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 scalar_t__ TC_ACT_EXT_CMP (int,int ) ;
 int TC_ACT_EXT_OPCODE (int) ;
 int TC_ACT_EXT_OPCODE_MAX ;
 int TC_ACT_EXT_VAL_MASK ;
 int TC_ACT_GOTO_CHAIN ;
 int TC_ACT_UNSPEC ;
 int TC_ACT_VALUE_MAX ;
 struct tcf_chain* tcf_chain_get_by_act (int ,int) ;

int tcf_action_check_ctrlact(int action, struct tcf_proto *tp,
        struct tcf_chain **newchain,
        struct netlink_ext_ack *extack)
{
 int opcode = TC_ACT_EXT_OPCODE(action), ret = -EINVAL;
 u32 chain_index;

 if (!opcode)
  ret = action > TC_ACT_VALUE_MAX ? -EINVAL : 0;
 else if (opcode <= TC_ACT_EXT_OPCODE_MAX || action == TC_ACT_UNSPEC)
  ret = 0;
 if (ret) {
  NL_SET_ERR_MSG(extack, "invalid control action");
  goto end;
 }

 if (TC_ACT_EXT_CMP(action, TC_ACT_GOTO_CHAIN)) {
  chain_index = action & TC_ACT_EXT_VAL_MASK;
  if (!tp || !newchain) {
   ret = -EINVAL;
   NL_SET_ERR_MSG(extack,
           "can't goto NULL proto/chain");
   goto end;
  }
  *newchain = tcf_chain_get_by_act(tp->chain->block, chain_index);
  if (!*newchain) {
   ret = -ENOMEM;
   NL_SET_ERR_MSG(extack,
           "can't allocate goto_chain");
  }
 }
end:
 return ret;
}
