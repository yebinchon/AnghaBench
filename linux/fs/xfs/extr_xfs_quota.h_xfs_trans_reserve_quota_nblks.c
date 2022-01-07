
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct xfs_trans {int dummy; } ;
struct xfs_inode {int dummy; } ;
typedef int int64_t ;



__attribute__((used)) static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
  struct xfs_inode *ip, int64_t nblks, long ninos, uint flags)
{
 return 0;
}
