
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_blocksize; int ns_bdev; } ;
struct nilfs_segment_summary {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int sector_t ;


 struct buffer_head* __bread (int ,int ,int ) ;

__attribute__((used)) static struct buffer_head *
nilfs_read_log_header(struct the_nilfs *nilfs, sector_t start_blocknr,
        struct nilfs_segment_summary **sum)
{
 struct buffer_head *bh_sum;

 bh_sum = __bread(nilfs->ns_bdev, start_blocknr, nilfs->ns_blocksize);
 if (bh_sum)
  *sum = (struct nilfs_segment_summary *)bh_sum->b_data;
 return bh_sum;
}
