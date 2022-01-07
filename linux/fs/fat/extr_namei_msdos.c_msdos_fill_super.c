
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int fat_fill_super (struct super_block*,void*,int,int ,int ) ;
 int setup ;

__attribute__((used)) static int msdos_fill_super(struct super_block *sb, void *data, int silent)
{
 return fat_fill_super(sb, data, silent, 0, setup);
}
