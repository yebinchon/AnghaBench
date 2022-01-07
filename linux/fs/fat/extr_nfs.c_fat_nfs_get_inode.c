
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct super_block {int dummy; } ;
struct inode {int dummy; } ;


 struct inode* __fat_nfs_get_inode (struct super_block*,int ,int ,int ) ;

__attribute__((used)) static struct inode *fat_nfs_get_inode(struct super_block *sb,
           u64 ino, u32 generation)
{

 return __fat_nfs_get_inode(sb, ino, generation, 0);
}
