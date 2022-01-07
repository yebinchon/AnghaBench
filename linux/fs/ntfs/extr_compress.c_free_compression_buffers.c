
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int * ntfs_compression_buffer ;
 int vfree (int *) ;

void free_compression_buffers(void)
{
 BUG_ON(!ntfs_compression_buffer);
 vfree(ntfs_compression_buffer);
 ntfs_compression_buffer = ((void*)0);
}
