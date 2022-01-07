
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int __u64 ;


 int ENOENT ;
 int nilfs_cpfile_first_checkpoint_in_block (struct inode*,unsigned long) ;
 unsigned long nilfs_cpfile_get_blkoff (struct inode*,int ) ;
 int nilfs_mdt_find_block (struct inode*,unsigned long,unsigned long,unsigned long*,struct buffer_head**) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nilfs_cpfile_find_checkpoint_block(struct inode *cpfile,
           __u64 start_cno, __u64 end_cno,
           __u64 *cnop,
           struct buffer_head **bhp)
{
 unsigned long start, end, blkoff;
 int ret;

 if (unlikely(start_cno > end_cno))
  return -ENOENT;

 start = nilfs_cpfile_get_blkoff(cpfile, start_cno);
 end = nilfs_cpfile_get_blkoff(cpfile, end_cno);

 ret = nilfs_mdt_find_block(cpfile, start, end, &blkoff, bhp);
 if (!ret)
  *cnop = (blkoff == start) ? start_cno :
   nilfs_cpfile_first_checkpoint_in_block(cpfile, blkoff);
 return ret;
}
