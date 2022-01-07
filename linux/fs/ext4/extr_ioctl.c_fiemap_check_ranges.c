
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct super_block {int s_maxbytes; } ;


 int EFBIG ;
 int EINVAL ;

__attribute__((used)) static int fiemap_check_ranges(struct super_block *sb,
          u64 start, u64 len, u64 *new_len)
{
 u64 maxbytes = (u64) sb->s_maxbytes;

 *new_len = len;

 if (len == 0)
  return -EINVAL;

 if (start > maxbytes)
  return -EFBIG;




 if (len > maxbytes || (maxbytes - len) < start)
  *new_len = maxbytes - start;

 return 0;
}
