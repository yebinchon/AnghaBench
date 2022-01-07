
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dqid_t ;
typedef int uint ;
struct xfs_inode {int dummy; } ;
struct xfs_dquot {int dummy; } ;
typedef int prid_t ;



__attribute__((used)) static inline int
xfs_qm_vop_dqalloc(struct xfs_inode *ip, xfs_dqid_t uid, xfs_dqid_t gid,
  prid_t prid, uint flags, struct xfs_dquot **udqp,
  struct xfs_dquot **gdqp, struct xfs_dquot **pdqp)
{
 *udqp = ((void*)0);
 *gdqp = ((void*)0);
 *pdqp = ((void*)0);
 return 0;
}
