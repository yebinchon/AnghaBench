
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xfs_failaddr_t ;
struct xfs_dir2_data_unused {scalar_t__ length; } ;
struct xfs_dir2_data_hdr {int dummy; } ;
struct xfs_dir2_data_free {scalar_t__ length; int offset; } ;


 int * __this_address ;
 int be16_to_cpu (int ) ;

__attribute__((used)) static inline xfs_failaddr_t
xfs_dir2_data_check_new_free(
 struct xfs_dir2_data_hdr *hdr,
 struct xfs_dir2_data_free *dfp,
 struct xfs_dir2_data_unused *newdup)
{
 if (dfp == ((void*)0))
  return __this_address;
 if (dfp->length != newdup->length)
  return __this_address;
 if (be16_to_cpu(dfp->offset) != (char *)newdup - (char *)hdr)
  return __this_address;
 return ((void*)0);
}
