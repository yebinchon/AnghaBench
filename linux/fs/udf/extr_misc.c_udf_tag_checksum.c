
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct tag {int dummy; } ;



u8 udf_tag_checksum(const struct tag *t)
{
 u8 *data = (u8 *)t;
 u8 checksum = 0;
 int i;
 for (i = 0; i < sizeof(struct tag); ++i)
  if (i != 4)
   checksum += data[i];
 return checksum;
}
