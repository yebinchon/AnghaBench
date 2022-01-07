
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_disk_dqtrailer {int dummy; } ;


 int OCFS2_QBLK_RESERVED_SPACE ;

__attribute__((used)) static inline struct ocfs2_disk_dqtrailer *ocfs2_block_dqtrailer(int blocksize,
         void *buf)
{
 char *ptr = buf;
 ptr += blocksize - OCFS2_QBLK_RESERVED_SPACE;

 return (struct ocfs2_disk_dqtrailer *)ptr;
}
