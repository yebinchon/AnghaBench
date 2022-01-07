
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int __u64 ;


 int nilfs_mdt_get_block (struct inode*,int ,int,int *,struct buffer_head**) ;
 int nilfs_sufile_get_blkoff (struct inode*,int ) ;

__attribute__((used)) static inline int
nilfs_sufile_get_segment_usage_block(struct inode *sufile, __u64 segnum,
         int create, struct buffer_head **bhp)
{
 return nilfs_mdt_get_block(sufile,
       nilfs_sufile_get_blkoff(sufile, segnum),
       create, ((void*)0), bhp);
}
