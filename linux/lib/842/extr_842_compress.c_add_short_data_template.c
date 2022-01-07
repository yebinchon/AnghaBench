
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sw842_param {int* in; } ;


 int EINVAL ;
 int OP_BITS ;
 int OP_SHORT_DATA ;
 int SHORT_DATA_BITS ;
 int SHORT_DATA_BITS_MAX ;
 int add_bits (struct sw842_param*,int,int) ;
 int atomic_inc (int *) ;
 scalar_t__ sw842_template_counts ;
 int template_short_data_count ;

__attribute__((used)) static int add_short_data_template(struct sw842_param *p, u8 b)
{
 int ret, i;

 if (!b || b > SHORT_DATA_BITS_MAX)
  return -EINVAL;

 ret = add_bits(p, OP_SHORT_DATA, OP_BITS);
 if (ret)
  return ret;

 ret = add_bits(p, b, SHORT_DATA_BITS);
 if (ret)
  return ret;

 for (i = 0; i < b; i++) {
  ret = add_bits(p, p->in[i], 8);
  if (ret)
   return ret;
 }

 if (sw842_template_counts)
  atomic_inc(&template_short_data_count);

 return 0;
}
