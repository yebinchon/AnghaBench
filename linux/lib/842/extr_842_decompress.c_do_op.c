
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct sw842_param {int dummy; } ;


 int EINVAL ;
 size_t OPS_MAX ;
 size_t OP_ACTION ;



 size_t OP_AMOUNT ;
 int atomic_inc (int *) ;
 size_t** decomp_ops ;
 int do_data (struct sw842_param*,size_t) ;
 int do_index (struct sw842_param*,size_t) ;
 int pr_debug (char*,size_t) ;
 int pr_err (char*,size_t) ;
 scalar_t__ sw842_template_counts ;
 int * template_count ;

__attribute__((used)) static int do_op(struct sw842_param *p, u8 o)
{
 int i, ret = 0;

 if (o >= OPS_MAX)
  return -EINVAL;

 for (i = 0; i < 4; i++) {
  u8 op = decomp_ops[o][i];

  pr_debug("op is %x\n", op);

  switch (op & OP_ACTION) {
  case 130:
   ret = do_data(p, op & OP_AMOUNT);
   break;
  case 129:
   ret = do_index(p, op & OP_AMOUNT);
   break;
  case 128:
   break;
  default:
   pr_err("Internal error, invalid op %x\n", op);
   return -EINVAL;
  }

  if (ret)
   return ret;
 }

 if (sw842_template_counts)
  atomic_inc(&template_count[o]);

 return 0;
}
