
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_xattr_bucket {int bu_blocks; TYPE_2__* bu_inode; } ;
struct TYPE_4__ {TYPE_1__* i_sb; } ;
struct TYPE_3__ {int s_blocksize; } ;


 int BUG_ON (int) ;
 int bucket_block (struct ocfs2_xattr_bucket*,int) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void ocfs2_xattr_bucket_copy_data(struct ocfs2_xattr_bucket *dest,
      struct ocfs2_xattr_bucket *src)
{
 int i;
 int blocksize = src->bu_inode->i_sb->s_blocksize;

 BUG_ON(dest->bu_blocks != src->bu_blocks);
 BUG_ON(dest->bu_inode != src->bu_inode);

 for (i = 0; i < src->bu_blocks; i++) {
  memcpy(bucket_block(dest, i), bucket_block(src, i),
         blocksize);
 }
}
