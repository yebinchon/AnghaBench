
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct super_block {int dummy; } ;


 int udf_name_to_CS0 (struct super_block*,int *,int,int const*,int) ;

int udf_put_filename(struct super_block *sb, const uint8_t *sname, int slen,
       uint8_t *dname, int dlen)
{
 return udf_name_to_CS0(sb, dname, dlen, sname, slen);
}
