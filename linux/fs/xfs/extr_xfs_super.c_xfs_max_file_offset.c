
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
typedef int sector_t ;


 int ASSERT (int) ;
 int BITS_PER_LONG ;
 unsigned int PAGE_SIZE ;

__attribute__((used)) static uint64_t
xfs_max_file_offset(
 unsigned int blockshift)
{
 unsigned int pagefactor = 1;
 unsigned int bitshift = BITS_PER_LONG - 1;
 return (((uint64_t)pagefactor) << bitshift) - 1;
}
