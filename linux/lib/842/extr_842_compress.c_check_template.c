
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct sw842_param {int dummy; } ;


 size_t OPS_MAX ;
 size_t OP_ACTION_INDEX ;
 size_t OP_AMOUNT ;
 size_t OP_AMOUNT_2 ;
 size_t OP_AMOUNT_4 ;
 size_t OP_AMOUNT_8 ;
 int check_index (struct sw842_param*,int,int) ;
 size_t** comp_ops ;

__attribute__((used)) static bool check_template(struct sw842_param *p, u8 c)
{
 u8 *t = comp_ops[c];
 int i, match, b = 0;

 if (c >= OPS_MAX)
  return 0;

 for (i = 0; i < 4; i++) {
  if (t[i] & OP_ACTION_INDEX) {
   if (t[i] & OP_AMOUNT_2)
    match = check_index(p, 2, b >> 1);
   else if (t[i] & OP_AMOUNT_4)
    match = check_index(p, 4, b >> 2);
   else if (t[i] & OP_AMOUNT_8)
    match = check_index(p, 8, 0);
   else
    return 0;
   if (!match)
    return 0;
  }

  b += t[i] & OP_AMOUNT;
 }

 return 1;
}
