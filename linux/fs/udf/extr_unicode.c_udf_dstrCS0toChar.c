
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct super_block {int dummy; } ;


 int pr_warn (char*,int,int) ;
 int udf_name_from_CS0 (struct super_block*,int*,int,int const*,int,int ) ;

int udf_dstrCS0toChar(struct super_block *sb, uint8_t *utf_o, int o_len,
        const uint8_t *ocu_i, int i_len)
{
 int s_len = 0;

 if (i_len > 0) {
  s_len = ocu_i[i_len - 1];
  if (s_len >= i_len) {
   pr_warn("incorrect dstring lengths (%d/%d),"
    " truncating\n", s_len, i_len);
   s_len = i_len - 1;

   if (ocu_i[0] == 16)
    s_len -= (s_len - 1) & 2;
  }
 }

 return udf_name_from_CS0(sb, utf_o, o_len, ocu_i, s_len, 0);
}
