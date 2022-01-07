
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {int s_blocksize; int s_blocksize_bits; } ;



__attribute__((used)) static inline u64 ocfs2_blocks_for_bytes(struct super_block *sb,
      u64 bytes)
{
 bytes += sb->s_blocksize - 1;
 return bytes >> sb->s_blocksize_bits;
}
