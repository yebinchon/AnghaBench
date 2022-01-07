
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ufs_sb_private_info {int s_fpb; } ;
struct ufs_buffer_head {int dummy; } ;


 int* ubh_get_addr (struct ufs_buffer_head*,unsigned int) ;

__attribute__((used)) static inline int _ubh_isblockset_(struct ufs_sb_private_info * uspi,
 struct ufs_buffer_head * ubh, unsigned begin, unsigned block)
{
 u8 mask;
 switch (uspi->s_fpb) {
 case 8:
      return (*ubh_get_addr (ubh, begin + block) == 0xff);
 case 4:
  mask = 0x0f << ((block & 0x01) << 2);
  return (*ubh_get_addr (ubh, begin + (block >> 1)) & mask) == mask;
 case 2:
  mask = 0x03 << ((block & 0x03) << 1);
  return (*ubh_get_addr (ubh, begin + (block >> 2)) & mask) == mask;
 case 1:
  mask = 0x01 << (block & 0x07);
  return (*ubh_get_addr (ubh, begin + (block >> 3)) & mask) == mask;
 }
 return 0;
}
