
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time64_t ;
struct nilfs_segment_usage {int su_nblocks; int su_lastmod; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_page; } ;
typedef int __u64 ;
struct TYPE_2__ {int mi_sem; } ;


 TYPE_1__* NILFS_MDT (struct inode*) ;
 int WARN_ON (int ) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le32 (unsigned long) ;
 int cpu_to_le64 (scalar_t__) ;
 int down_write (int *) ;
 void* kmap_atomic (int ) ;
 int kunmap_atomic (void*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int nilfs_mdt_mark_dirty (struct inode*) ;
 int nilfs_segment_usage_error (struct nilfs_segment_usage*) ;
 struct nilfs_segment_usage* nilfs_sufile_block_get_segment_usage (struct inode*,int ,struct buffer_head*,void*) ;
 int nilfs_sufile_get_segment_usage_block (struct inode*,int ,int ,struct buffer_head**) ;
 int up_write (int *) ;

int nilfs_sufile_set_segment_usage(struct inode *sufile, __u64 segnum,
       unsigned long nblocks, time64_t modtime)
{
 struct buffer_head *bh;
 struct nilfs_segment_usage *su;
 void *kaddr;
 int ret;

 down_write(&NILFS_MDT(sufile)->mi_sem);
 ret = nilfs_sufile_get_segment_usage_block(sufile, segnum, 0, &bh);
 if (ret < 0)
  goto out_sem;

 kaddr = kmap_atomic(bh->b_page);
 su = nilfs_sufile_block_get_segment_usage(sufile, segnum, bh, kaddr);
 WARN_ON(nilfs_segment_usage_error(su));
 if (modtime)
  su->su_lastmod = cpu_to_le64(modtime);
 su->su_nblocks = cpu_to_le32(nblocks);
 kunmap_atomic(kaddr);

 mark_buffer_dirty(bh);
 nilfs_mdt_mark_dirty(sufile);
 brelse(bh);

 out_sem:
 up_write(&NILFS_MDT(sufile)->mi_sem);
 return ret;
}
