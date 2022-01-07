
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_descr {char* member_0; } ;
struct super_block {int * s_op; } ;
struct fs_context {int dummy; } ;


 int AAFS_MAGIC ;
 int aafs_super_ops ;
 int simple_fill_super (struct super_block*,int ,struct tree_descr*) ;

__attribute__((used)) static int apparmorfs_fill_super(struct super_block *sb, struct fs_context *fc)
{
 static struct tree_descr files[] = { {""} };
 int error;

 error = simple_fill_super(sb, AAFS_MAGIC, files);
 if (error)
  return error;
 sb->s_op = &aafs_super_ops;

 return 0;
}
