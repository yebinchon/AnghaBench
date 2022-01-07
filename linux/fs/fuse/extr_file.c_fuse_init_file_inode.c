
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * a_ops; } ;
struct inode {TYPE_1__ i_data; int * i_fop; } ;
struct fuse_inode {int writepages; int page_waitq; scalar_t__ writectr; int queued_writes; int write_files; } ;


 int INIT_LIST_HEAD (int *) ;
 int fuse_file_aops ;
 int fuse_file_operations ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int init_waitqueue_head (int *) ;

void fuse_init_file_inode(struct inode *inode)
{
 struct fuse_inode *fi = get_fuse_inode(inode);

 inode->i_fop = &fuse_file_operations;
 inode->i_data.a_ops = &fuse_file_aops;

 INIT_LIST_HEAD(&fi->write_files);
 INIT_LIST_HEAD(&fi->queued_writes);
 fi->writectr = 0;
 init_waitqueue_head(&fi->page_waitq);
 INIT_LIST_HEAD(&fi->writepages);
}
