
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize_bits; } ;
struct buffer_head {int dummy; } ;


 int EIO ;
 int SUPER1_OFF ;
 int SUPER2_OFF ;
 struct buffer_head* sb_bread (struct super_block*,int) ;

int readSuper(struct super_block *sb, struct buffer_head **bpp)
{

 *bpp = sb_bread(sb, SUPER1_OFF >> sb->s_blocksize_bits);
 if (*bpp)
  return 0;


 *bpp = sb_bread(sb, SUPER2_OFF >> sb->s_blocksize_bits);
 if (*bpp)
  return 0;

 return -EIO;
}
