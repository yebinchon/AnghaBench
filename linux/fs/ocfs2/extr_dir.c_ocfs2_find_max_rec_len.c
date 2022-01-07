
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ocfs2_dir_entry {int rec_len; } ;
struct buffer_head {char* b_data; } ;


 int OCFS2_DIR_MIN_REC_LEN ;
 int le16_to_cpu (int ) ;
 int ocfs2_dir_trailer_blk_off (struct super_block*) ;
 int ocfs2_figure_dirent_hole (struct ocfs2_dir_entry*) ;
 scalar_t__ ocfs2_trailer_from_bh (struct buffer_head*,struct super_block*) ;

__attribute__((used)) static int ocfs2_find_max_rec_len(struct super_block *sb,
      struct buffer_head *dirblock_bh)
{
 int size, this_hole, largest_hole = 0;
 char *trailer, *de_buf, *limit, *start = dirblock_bh->b_data;
 struct ocfs2_dir_entry *de;

 trailer = (char *)ocfs2_trailer_from_bh(dirblock_bh, sb);
 size = ocfs2_dir_trailer_blk_off(sb);
 limit = start + size;
 de_buf = start;
 de = (struct ocfs2_dir_entry *)de_buf;
 do {
  if (de_buf != trailer) {
   this_hole = ocfs2_figure_dirent_hole(de);
   if (this_hole > largest_hole)
    largest_hole = this_hole;
  }

  de_buf += le16_to_cpu(de->rec_len);
  de = (struct ocfs2_dir_entry *)de_buf;
 } while (de_buf < limit);

 if (largest_hole >= OCFS2_DIR_MIN_REC_LEN)
  return largest_hole;
 return 0;
}
