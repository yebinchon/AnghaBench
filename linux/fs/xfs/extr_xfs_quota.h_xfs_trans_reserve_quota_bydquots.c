
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct xfs_dquot {int dummy; } ;
typedef int int64_t ;



__attribute__((used)) static inline int xfs_trans_reserve_quota_bydquots(struct xfs_trans *tp,
  struct xfs_mount *mp, struct xfs_dquot *udqp,
  struct xfs_dquot *gdqp, struct xfs_dquot *pdqp,
  int64_t nblks, long nions, uint flags)
{
 return 0;
}
