
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct super_block {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int udf_name_from_CS0 (struct super_block*,int *,int,int const*,int,int) ;

int udf_get_filename(struct super_block *sb, const uint8_t *sname, int slen,
       uint8_t *dname, int dlen)
{
 int ret;

 if (!slen)
  return -EIO;

 if (dlen <= 0)
  return 0;

 ret = udf_name_from_CS0(sb, dname, dlen, sname, slen, 1);

 if (ret == 0)
  ret = -EINVAL;
 return ret;
}
