
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_data; } ;
struct TYPE_2__ {int fd; } ;


 TYPE_1__* HOSTFS_I (struct inode*) ;
 int clear_inode (struct inode*) ;
 int close_file (int*) ;
 int truncate_inode_pages_final (int *) ;

__attribute__((used)) static void hostfs_evict_inode(struct inode *inode)
{
 truncate_inode_pages_final(&inode->i_data);
 clear_inode(inode);
 if (HOSTFS_I(inode)->fd != -1) {
  close_file(&HOSTFS_I(inode)->fd);
  HOSTFS_I(inode)->fd = -1;
 }
}
