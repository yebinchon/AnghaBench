
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int _ocfs2_free_suballoc_bits (int *,struct inode*,struct buffer_head*,unsigned int,int ,unsigned int,int *) ;

int ocfs2_free_suballoc_bits(handle_t *handle,
        struct inode *alloc_inode,
        struct buffer_head *alloc_bh,
        unsigned int start_bit,
        u64 bg_blkno,
        unsigned int count)
{
 return _ocfs2_free_suballoc_bits(handle, alloc_inode, alloc_bh,
      start_bit, bg_blkno, count, ((void*)0));
}
