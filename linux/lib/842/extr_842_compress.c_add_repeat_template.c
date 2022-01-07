
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sw842_param {int dummy; } ;


 int EINVAL ;
 int OP_BITS ;
 scalar_t__ OP_REPEAT ;
 int REPEAT_BITS ;
 scalar_t__ REPEAT_BITS_MAX ;
 int add_bits (struct sw842_param*,scalar_t__,int ) ;
 int atomic_inc (int *) ;
 scalar_t__ sw842_template_counts ;
 int template_repeat_count ;

__attribute__((used)) static int add_repeat_template(struct sw842_param *p, u8 r)
{
 int ret;


 if (!r || --r > REPEAT_BITS_MAX)
  return -EINVAL;

 ret = add_bits(p, OP_REPEAT, OP_BITS);
 if (ret)
  return ret;

 ret = add_bits(p, r, REPEAT_BITS);
 if (ret)
  return ret;

 if (sw842_template_counts)
  atomic_inc(&template_repeat_count);

 return 0;
}
