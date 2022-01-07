
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct sw842_param {size_t* index8; size_t* data8; size_t* index4; size_t* data4; size_t* index2; size_t* data2; } ;


 int EINVAL ;
 int I2_BITS ;
 int I4_BITS ;
 int I8_BITS ;
 size_t OPS_MAX ;
 size_t OP_ACTION_DATA ;
 size_t OP_ACTION_INDEX ;
 size_t OP_ACTION_NOOP ;
 size_t OP_AMOUNT ;




 int OP_BITS ;
 int add_bits (struct sw842_param*,size_t,int) ;
 int atomic_inc (int *) ;
 size_t** comp_ops ;
 size_t get_input_data (struct sw842_param*,int,int) ;
 int pr_debug (char*,size_t) ;
 int pr_err (char*,size_t,int,size_t,size_t,size_t,size_t) ;
 scalar_t__ sw842_template_counts ;
 int * template_count ;

__attribute__((used)) static int add_template(struct sw842_param *p, u8 c)
{
 int ret, i, b = 0;
 u8 *t = comp_ops[c];
 bool inv = 0;

 if (c >= OPS_MAX)
  return -EINVAL;

 pr_debug("template %x\n", t[4]);

 ret = add_bits(p, t[4], OP_BITS);
 if (ret)
  return ret;

 for (i = 0; i < 4; i++) {
  pr_debug("op %x\n", t[i]);

  switch (t[i] & OP_AMOUNT) {
  case 128:
   if (b)
    inv = 1;
   else if (t[i] & OP_ACTION_INDEX)
    ret = add_bits(p, p->index8[0], I8_BITS);
   else if (t[i] & OP_ACTION_DATA)
    ret = add_bits(p, p->data8[0], 64);
   else
    inv = 1;
   break;
  case 129:
   if (b == 2 && t[i] & OP_ACTION_DATA)
    ret = add_bits(p, get_input_data(p, 2, 32), 32);
   else if (b != 0 && b != 4)
    inv = 1;
   else if (t[i] & OP_ACTION_INDEX)
    ret = add_bits(p, p->index4[b >> 2], I4_BITS);
   else if (t[i] & OP_ACTION_DATA)
    ret = add_bits(p, p->data4[b >> 2], 32);
   else
    inv = 1;
   break;
  case 130:
   if (b != 0 && b != 2 && b != 4 && b != 6)
    inv = 1;
   if (t[i] & OP_ACTION_INDEX)
    ret = add_bits(p, p->index2[b >> 1], I2_BITS);
   else if (t[i] & OP_ACTION_DATA)
    ret = add_bits(p, p->data2[b >> 1], 16);
   else
    inv = 1;
   break;
  case 131:
   inv = (b != 8) || !(t[i] & OP_ACTION_NOOP);
   break;
  default:
   inv = 1;
   break;
  }

  if (ret)
   return ret;

  if (inv) {
   pr_err("Invalid templ %x op %d : %x %x %x %x\n",
          c, i, t[0], t[1], t[2], t[3]);
   return -EINVAL;
  }

  b += t[i] & OP_AMOUNT;
 }

 if (b != 8) {
  pr_err("Invalid template %x len %x : %x %x %x %x\n",
         c, b, t[0], t[1], t[2], t[3]);
  return -EINVAL;
 }

 if (sw842_template_counts)
  atomic_inc(&template_count[t[4]]);

 return 0;
}
