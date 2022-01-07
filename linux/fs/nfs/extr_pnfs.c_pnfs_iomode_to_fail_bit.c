
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ IOMODE_RW ;
 int NFS_LAYOUT_RO_FAILED ;
 int NFS_LAYOUT_RW_FAILED ;

__attribute__((used)) static int
pnfs_iomode_to_fail_bit(u32 iomode)
{
 return iomode == IOMODE_RW ?
  NFS_LAYOUT_RW_FAILED : NFS_LAYOUT_RO_FAILED;
}
