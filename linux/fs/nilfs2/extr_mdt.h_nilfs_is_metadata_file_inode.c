
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int * i_private; } ;



__attribute__((used)) static inline int nilfs_is_metadata_file_inode(const struct inode *inode)
{
 return inode->i_private != ((void*)0);
}
