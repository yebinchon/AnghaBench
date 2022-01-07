
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct super_block {int dummy; } ;
struct inode {int dummy; } ;


 struct inode* jffs2_iget (struct super_block*,int ) ;

__attribute__((used)) static struct inode *jffs2_nfs_get_inode(struct super_block *sb, uint64_t ino,
      uint32_t generation)
{



 return jffs2_iget(sb, ino);
}
