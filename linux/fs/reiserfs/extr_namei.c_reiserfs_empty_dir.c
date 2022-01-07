
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_size; } ;


 scalar_t__ EMPTY_DIR_SIZE ;
 scalar_t__ EMPTY_DIR_SIZE_V1 ;

__attribute__((used)) static inline int reiserfs_empty_dir(struct inode *inode)
{






 if (inode->i_size != EMPTY_DIR_SIZE &&
     inode->i_size != EMPTY_DIR_SIZE_V1) {
  return 0;
 }
 return 1;
}
