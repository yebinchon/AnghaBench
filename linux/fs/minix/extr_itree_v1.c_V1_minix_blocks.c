
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef int loff_t ;


 int nblocks (int ,struct super_block*) ;

unsigned V1_minix_blocks(loff_t size, struct super_block *sb)
{
 return nblocks(size, sb);
}
