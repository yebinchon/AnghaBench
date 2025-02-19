
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_maxbytes; } ;
typedef scalar_t__ loff_t ;
typedef scalar_t__ __u64 ;


 scalar_t__ MAX_LFS_FILESIZE ;

__attribute__((used)) static inline
void nfs_super_set_maxbytes(struct super_block *sb, __u64 maxfilesize)
{
 sb->s_maxbytes = (loff_t)maxfilesize;
 if (sb->s_maxbytes > MAX_LFS_FILESIZE || sb->s_maxbytes <= 0)
  sb->s_maxbytes = MAX_LFS_FILESIZE;
}
