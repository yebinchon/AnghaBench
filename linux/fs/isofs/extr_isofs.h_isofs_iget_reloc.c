
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;


 struct inode* __isofs_iget (struct super_block*,unsigned long,unsigned long,int) ;

__attribute__((used)) static inline struct inode *isofs_iget_reloc(struct super_block *sb,
          unsigned long block,
          unsigned long offset)
{
 return __isofs_iget(sb, block, offset, 1);
}
