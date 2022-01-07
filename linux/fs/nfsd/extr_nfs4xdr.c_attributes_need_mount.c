
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int FATTR4_WORD0_LEASE_TIME ;
 int FATTR4_WORD0_RDATTR_ERROR ;
 int FATTR4_WORD1_MOUNTED_ON_FILEID ;

__attribute__((used)) static inline int attributes_need_mount(u32 *bmval)
{
 if (bmval[0] & ~(FATTR4_WORD0_RDATTR_ERROR | FATTR4_WORD0_LEASE_TIME))
  return 1;
 if (bmval[1] & ~FATTR4_WORD1_MOUNTED_ON_FILEID)
  return 1;
 return 0;
}
