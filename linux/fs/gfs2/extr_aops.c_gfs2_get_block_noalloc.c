
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;


 int EIO ;
 int buffer_mapped (struct buffer_head*) ;
 int gfs2_block_map (struct inode*,int ,struct buffer_head*,int ) ;

__attribute__((used)) static int gfs2_get_block_noalloc(struct inode *inode, sector_t lblock,
      struct buffer_head *bh_result, int create)
{
 int error;

 error = gfs2_block_map(inode, lblock, bh_result, 0);
 if (error)
  return error;
 if (!buffer_mapped(bh_result))
  return -EIO;
 return 0;
}
