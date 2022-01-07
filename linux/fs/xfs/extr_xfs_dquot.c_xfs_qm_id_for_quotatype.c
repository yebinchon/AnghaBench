
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_dqid_t ;
typedef int uint ;
struct TYPE_2__ {int di_gid; int di_uid; } ;
struct xfs_inode {TYPE_1__ i_d; } ;


 int ASSERT (int ) ;



 int xfs_get_projid (struct xfs_inode*) ;

xfs_dqid_t
xfs_qm_id_for_quotatype(
 struct xfs_inode *ip,
 uint type)
{
 switch (type) {
 case 128:
  return ip->i_d.di_uid;
 case 130:
  return ip->i_d.di_gid;
 case 129:
  return xfs_get_projid(ip);
 }
 ASSERT(0);
 return 0;
}
