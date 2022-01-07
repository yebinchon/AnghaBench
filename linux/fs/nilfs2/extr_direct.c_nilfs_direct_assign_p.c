
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bi_level; int bi_blkoff; } ;
union nilfs_binfo {TYPE_1__ bi_dat; } ;
struct nilfs_bmap {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;
typedef int __u64 ;


 int cpu_to_le64 (int ) ;
 int nilfs_direct_set_ptr (struct nilfs_bmap*,int ,int ) ;

__attribute__((used)) static int nilfs_direct_assign_p(struct nilfs_bmap *direct,
     __u64 key, __u64 ptr,
     struct buffer_head **bh,
     sector_t blocknr,
     union nilfs_binfo *binfo)
{
 nilfs_direct_set_ptr(direct, key, blocknr);

 binfo->bi_dat.bi_blkoff = cpu_to_le64(key);
 binfo->bi_dat.bi_level = 0;

 return 0;
}
