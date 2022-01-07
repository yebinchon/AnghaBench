
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct super_block {int dummy; } ;
struct ocfs2_group_desc {int bg_free_bits_count; int bg_blkno; void* bg_bitmap; } ;


 int ERESTARTSYS ;
 int current ;
 scalar_t__ fatal_signal_pending (int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_find_next_bit (void*,int,int) ;
 int ocfs2_find_next_zero_bit (void*,int,int) ;
 int ocfs2_trim_extent (struct super_block*,struct ocfs2_group_desc*,int ,int,int) ;
 int trace_ocfs2_trim_group (unsigned long long,int,int,int) ;

__attribute__((used)) static int ocfs2_trim_group(struct super_block *sb,
       struct ocfs2_group_desc *gd, u64 group,
       u32 start, u32 max, u32 minbits)
{
 int ret = 0, count = 0, next;
 void *bitmap = gd->bg_bitmap;

 if (le16_to_cpu(gd->bg_free_bits_count) < minbits)
  return 0;

 trace_ocfs2_trim_group((unsigned long long)le64_to_cpu(gd->bg_blkno),
          start, max, minbits);

 while (start < max) {
  start = ocfs2_find_next_zero_bit(bitmap, max, start);
  if (start >= max)
   break;
  next = ocfs2_find_next_bit(bitmap, max, start);

  if ((next - start) >= minbits) {
   ret = ocfs2_trim_extent(sb, gd, group,
      start, next - start);
   if (ret < 0) {
    mlog_errno(ret);
    break;
   }
   count += next - start;
  }
  start = next + 1;

  if (fatal_signal_pending(current)) {
   count = -ERESTARTSYS;
   break;
  }

  if ((le16_to_cpu(gd->bg_free_bits_count) - count) < minbits)
   break;
 }

 if (ret < 0)
  count = ret;

 return count;
}
