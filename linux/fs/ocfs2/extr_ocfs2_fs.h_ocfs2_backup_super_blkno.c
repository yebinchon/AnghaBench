
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int OCFS2_BACKUP_SB_START ;
 int OCFS2_MAX_BACKUP_SUPERBLOCKS ;

__attribute__((used)) static inline uint64_t ocfs2_backup_super_blkno(int blocksize, int index)
{
 uint64_t offset = OCFS2_BACKUP_SB_START;

 if (index >= 0 && index < OCFS2_MAX_BACKUP_SUPERBLOCKS) {
  offset <<= (2 * index);
  offset /= blocksize;
  return offset;
 }

 return 0;
}
