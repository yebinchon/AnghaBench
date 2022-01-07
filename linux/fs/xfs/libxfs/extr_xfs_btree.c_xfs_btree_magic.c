
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t xfs_btnum_t ;
typedef scalar_t__ uint32_t ;


 int ASSERT (int) ;
 scalar_t__** xfs_magics ;

uint32_t
xfs_btree_magic(
 int crc,
 xfs_btnum_t btnum)
{
 uint32_t magic = xfs_magics[crc][btnum];


 ASSERT(magic != 0);
 return magic;
}
