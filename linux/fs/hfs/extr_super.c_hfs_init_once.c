
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfs_inode_info {int vfs_inode; } ;


 int inode_init_once (int *) ;

__attribute__((used)) static void hfs_init_once(void *p)
{
 struct hfs_inode_info *i = p;

 inode_init_once(&i->vfs_inode);
}
