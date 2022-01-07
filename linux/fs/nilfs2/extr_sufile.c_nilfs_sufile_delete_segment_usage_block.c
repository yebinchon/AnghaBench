
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int __u64 ;


 int nilfs_mdt_delete_block (struct inode*,int ) ;
 int nilfs_sufile_get_blkoff (struct inode*,int ) ;

__attribute__((used)) static int nilfs_sufile_delete_segment_usage_block(struct inode *sufile,
         __u64 segnum)
{
 return nilfs_mdt_delete_block(sufile,
          nilfs_sufile_get_blkoff(sufile, segnum));
}
