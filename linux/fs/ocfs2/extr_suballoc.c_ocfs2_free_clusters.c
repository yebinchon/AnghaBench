
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int _ocfs2_free_clusters (int *,struct inode*,struct buffer_head*,int ,unsigned int,int ) ;
 int _ocfs2_set_bit ;

int ocfs2_free_clusters(handle_t *handle,
   struct inode *bitmap_inode,
   struct buffer_head *bitmap_bh,
   u64 start_blk,
   unsigned int num_clusters)
{
 return _ocfs2_free_clusters(handle, bitmap_inode, bitmap_bh,
        start_blk, num_clusters,
        _ocfs2_set_bit);
}
