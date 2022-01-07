
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize_bits; int s_blocksize; } ;



__attribute__((used)) static int ocfs2_bucket_align_free_start(struct super_block *sb,
      int free_start, int size)
{




 if (((free_start - size) >> sb->s_blocksize_bits) !=
     ((free_start - 1) >> sb->s_blocksize_bits))
  free_start -= free_start % sb->s_blocksize;

 return free_start;
}
