
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw842_param {int dummy; } ;


 int OP_BITS ;
 int OP_END ;
 int add_bits (struct sw842_param*,int ,int ) ;
 int atomic_inc (int *) ;
 scalar_t__ sw842_template_counts ;
 int template_end_count ;

__attribute__((used)) static int add_end_template(struct sw842_param *p)
{
 int ret = add_bits(p, OP_END, OP_BITS);

 if (ret)
  return ret;

 if (sw842_template_counts)
  atomic_inc(&template_end_count);

 return 0;
}
