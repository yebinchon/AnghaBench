
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int __save_error_info (struct super_block*,char const*,unsigned int) ;
 int ext4_commit_super (struct super_block*,int) ;

__attribute__((used)) static void save_error_info(struct super_block *sb, const char *func,
       unsigned int line)
{
 __save_error_info(sb, func, line);
 ext4_commit_super(sb, 1);
}
