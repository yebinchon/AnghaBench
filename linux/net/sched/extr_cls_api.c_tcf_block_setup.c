
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_block {int dummy; } ;
struct flow_block_offload {int command; } ;


 int EOPNOTSUPP ;


 int WARN_ON_ONCE (int) ;
 int tcf_block_bind (struct tcf_block*,struct flow_block_offload*) ;
 int tcf_block_unbind (struct tcf_block*,struct flow_block_offload*) ;

__attribute__((used)) static int tcf_block_setup(struct tcf_block *block,
      struct flow_block_offload *bo)
{
 int err;

 switch (bo->command) {
 case 129:
  err = tcf_block_bind(block, bo);
  break;
 case 128:
  err = 0;
  tcf_block_unbind(block, bo);
  break;
 default:
  WARN_ON_ONCE(1);
  err = -EOPNOTSUPP;
 }

 return err;
}
