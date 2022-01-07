
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * xfs_failaddr_t ;
typedef int xfs_dqid_t ;
struct TYPE_3__ {scalar_t__ d_magic; scalar_t__ d_version; scalar_t__ d_flags; int d_rtbtimer; scalar_t__ d_rtb_softlimit; scalar_t__ d_rtbcount; int d_itimer; scalar_t__ d_ino_softlimit; scalar_t__ d_icount; int d_btimer; scalar_t__ d_blk_softlimit; scalar_t__ d_bcount; int d_id; } ;
typedef TYPE_1__ xfs_disk_dquot_t ;
typedef scalar_t__ uint ;
struct xfs_mount {int dummy; } ;


 int XFS_DQUOT_MAGIC ;
 scalar_t__ XFS_DQUOT_VERSION ;
 scalar_t__ XFS_DQ_GROUP ;
 scalar_t__ XFS_DQ_PROJ ;
 scalar_t__ XFS_DQ_USER ;
 int * __this_address ;
 int be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (scalar_t__) ;
 scalar_t__ cpu_to_be16 (int ) ;

xfs_failaddr_t
xfs_dquot_verify(
 struct xfs_mount *mp,
 xfs_disk_dquot_t *ddq,
 xfs_dqid_t id,
 uint type)
{
 if (ddq->d_magic != cpu_to_be16(XFS_DQUOT_MAGIC))
  return __this_address;
 if (ddq->d_version != XFS_DQUOT_VERSION)
  return __this_address;

 if (type && ddq->d_flags != type)
  return __this_address;
 if (ddq->d_flags != XFS_DQ_USER &&
     ddq->d_flags != XFS_DQ_PROJ &&
     ddq->d_flags != XFS_DQ_GROUP)
  return __this_address;

 if (id != -1 && id != be32_to_cpu(ddq->d_id))
  return __this_address;

 if (!ddq->d_id)
  return ((void*)0);

 if (ddq->d_blk_softlimit &&
     be64_to_cpu(ddq->d_bcount) > be64_to_cpu(ddq->d_blk_softlimit) &&
     !ddq->d_btimer)
  return __this_address;

 if (ddq->d_ino_softlimit &&
     be64_to_cpu(ddq->d_icount) > be64_to_cpu(ddq->d_ino_softlimit) &&
     !ddq->d_itimer)
  return __this_address;

 if (ddq->d_rtb_softlimit &&
     be64_to_cpu(ddq->d_rtbcount) > be64_to_cpu(ddq->d_rtb_softlimit) &&
     !ddq->d_rtbtimer)
  return __this_address;

 return ((void*)0);
}
