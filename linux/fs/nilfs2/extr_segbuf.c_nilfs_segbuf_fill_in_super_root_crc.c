
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct the_nilfs {int ns_inode_size; } ;
struct nilfs_super_root {int sr_sum; } ;
struct nilfs_segment_buffer {TYPE_2__* sb_super_root; TYPE_1__* sb_super; } ;
struct TYPE_4__ {scalar_t__ b_data; } ;
struct TYPE_3__ {struct the_nilfs* s_fs_info; } ;


 unsigned int NILFS_SR_BYTES (int ) ;
 int cpu_to_le32 (int ) ;
 int crc32_le (int ,unsigned char*,unsigned int) ;

__attribute__((used)) static void
nilfs_segbuf_fill_in_super_root_crc(struct nilfs_segment_buffer *segbuf,
        u32 seed)
{
 struct nilfs_super_root *raw_sr;
 struct the_nilfs *nilfs = segbuf->sb_super->s_fs_info;
 unsigned int srsize;
 u32 crc;

 raw_sr = (struct nilfs_super_root *)segbuf->sb_super_root->b_data;
 srsize = NILFS_SR_BYTES(nilfs->ns_inode_size);
 crc = crc32_le(seed,
         (unsigned char *)raw_sr + sizeof(raw_sr->sr_sum),
         srsize - sizeof(raw_sr->sr_sum));
 raw_sr->sr_sum = cpu_to_le32(crc);
}
