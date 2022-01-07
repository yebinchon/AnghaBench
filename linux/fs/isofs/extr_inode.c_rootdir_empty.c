
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct iso_directory_record {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int brelse (struct buffer_head*) ;
 struct buffer_head* sb_bread (struct super_block*,unsigned long) ;

__attribute__((used)) static bool rootdir_empty(struct super_block *sb, unsigned long block)
{
 int offset = 0, files = 0, de_len;
 struct iso_directory_record *de;
 struct buffer_head *bh;

 bh = sb_bread(sb, block);
 if (!bh)
  return 1;
 while (files < 3) {
  de = (struct iso_directory_record *) (bh->b_data + offset);
  de_len = *(unsigned char *) de;
  if (de_len == 0)
   break;
  files++;
  offset += de_len;
 }
 brelse(bh);
 return files < 3;
}
