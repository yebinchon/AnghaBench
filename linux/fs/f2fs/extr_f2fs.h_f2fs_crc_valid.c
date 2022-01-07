
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
typedef scalar_t__ __u32 ;


 scalar_t__ f2fs_crc32 (struct f2fs_sb_info*,void*,size_t) ;

__attribute__((used)) static inline bool f2fs_crc_valid(struct f2fs_sb_info *sbi, __u32 blk_crc,
      void *buf, size_t buf_size)
{
 return f2fs_crc32(sbi, buf, buf_size) == blk_crc;
}
