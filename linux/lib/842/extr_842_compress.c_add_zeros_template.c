
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw842_param {int dummy; } ;


 int OP_BITS ;
 int OP_ZEROS ;
 int add_bits (struct sw842_param*,int ,int ) ;
 int atomic_inc (int *) ;
 scalar_t__ sw842_template_counts ;
 int template_zeros_count ;

__attribute__((used)) static int add_zeros_template(struct sw842_param *p)
{
 int ret = add_bits(p, OP_ZEROS, OP_BITS);

 if (ret)
  return ret;

 if (sw842_template_counts)
  atomic_inc(&template_zeros_count);

 return 0;
}
