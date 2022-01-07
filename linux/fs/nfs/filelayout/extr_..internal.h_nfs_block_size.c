
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long NFS_DEF_FILE_IO_SIZE ;
 unsigned long NFS_MAX_FILE_IO_SIZE ;
 unsigned long NFS_MIN_FILE_IO_SIZE ;
 unsigned long nfs_block_bits (unsigned long,unsigned char*) ;

__attribute__((used)) static inline
unsigned long nfs_block_size(unsigned long bsize, unsigned char *nrbitsp)
{
 if (bsize < NFS_MIN_FILE_IO_SIZE)
  bsize = NFS_DEF_FILE_IO_SIZE;
 else if (bsize >= NFS_MAX_FILE_IO_SIZE)
  bsize = NFS_MAX_FILE_IO_SIZE;

 return nfs_block_bits(bsize, nrbitsp);
}
