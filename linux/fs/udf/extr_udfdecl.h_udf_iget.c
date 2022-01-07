
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct kernel_lb_addr {int dummy; } ;
struct inode {int dummy; } ;


 struct inode* __udf_iget (struct super_block*,struct kernel_lb_addr*,int) ;

__attribute__((used)) static inline struct inode *udf_iget(struct super_block *sb,
         struct kernel_lb_addr *ino)
{
 return __udf_iget(sb, ino, 0);
}
