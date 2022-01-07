
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int __ext4_warning_inode (struct inode*,char const*,unsigned int,char*) ;

__attribute__((used)) static void __warn_no_space_for_csum(struct inode *inode, const char *func,
         unsigned int line)
{
 __ext4_warning_inode(inode, func, line,
  "No space for directory leaf checksum. Please run e2fsck -D.");
}
