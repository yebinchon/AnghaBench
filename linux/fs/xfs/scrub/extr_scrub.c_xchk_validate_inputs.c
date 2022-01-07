
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xfs_scrub_metadata {int sm_flags; size_t sm_type; int sm_ino; int sm_gen; int sm_agno; int sm_reserved; } ;
struct TYPE_3__ {int sb_agcount; } ;
struct xfs_mount {int m_flags; TYPE_1__ m_sb; } ;
struct xchk_meta_ops {int type; int (* has ) (TYPE_1__*) ;int * scrub; int * setup; } ;


 int EINVAL ;
 int ENOENT ;
 int EOPNOTSUPP ;
 int EROFS ;




 int XFS_MOUNT_RDONLY ;
 int XFS_SCRUB_FLAGS_IN ;
 int XFS_SCRUB_FLAGS_OUT ;
 int XFS_SCRUB_IFLAG_REPAIR ;
 size_t XFS_SCRUB_TYPE_NR ;
 scalar_t__ memchr_inv (int ,int ,int) ;
 struct xchk_meta_ops* meta_scrub_ops ;
 int stub1 (TYPE_1__*) ;
 int xfs_sb_version_hascrc (TYPE_1__*) ;

__attribute__((used)) static int
xchk_validate_inputs(
 struct xfs_mount *mp,
 struct xfs_scrub_metadata *sm)
{
 int error;
 const struct xchk_meta_ops *ops;

 error = -EINVAL;

 sm->sm_flags &= ~XFS_SCRUB_FLAGS_OUT;
 if (sm->sm_flags & ~XFS_SCRUB_FLAGS_IN)
  goto out;

 if (memchr_inv(sm->sm_reserved, 0, sizeof(sm->sm_reserved)))
  goto out;

 error = -ENOENT;

 if (sm->sm_type >= XFS_SCRUB_TYPE_NR)
  goto out;
 ops = &meta_scrub_ops[sm->sm_type];
 if (ops->setup == ((void*)0) || ops->scrub == ((void*)0))
  goto out;

 if (ops->has && !ops->has(&mp->m_sb))
  goto out;

 error = -EINVAL;

 switch (ops->type) {
 case 129:
 case 131:
  if (sm->sm_ino || sm->sm_gen || sm->sm_agno)
   goto out;
  break;
 case 128:
  if (sm->sm_ino || sm->sm_gen ||
      sm->sm_agno >= mp->m_sb.sb_agcount)
   goto out;
  break;
 case 130:
  if (sm->sm_agno || (sm->sm_gen && !sm->sm_ino))
   goto out;
  break;
 default:
  goto out;
 }







 if (sm->sm_flags & XFS_SCRUB_IFLAG_REPAIR) {
  error = -EOPNOTSUPP;
  if (!xfs_sb_version_hascrc(&mp->m_sb))
   goto out;

  error = -EROFS;
  if (mp->m_flags & XFS_MOUNT_RDONLY)
   goto out;
 }

 error = 0;
out:
 return error;
}
