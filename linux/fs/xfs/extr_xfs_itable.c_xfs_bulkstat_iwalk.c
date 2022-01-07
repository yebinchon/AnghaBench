
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_ino_t ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 int xfs_bulkstat_one_int (struct xfs_mount*,struct xfs_trans*,int ,void*) ;

__attribute__((used)) static int
xfs_bulkstat_iwalk(
 struct xfs_mount *mp,
 struct xfs_trans *tp,
 xfs_ino_t ino,
 void *data)
{
 int error;

 error = xfs_bulkstat_one_int(mp, tp, ino, data);

 if (error == -ENOENT || error == -EINVAL)
  return 0;
 return error;
}
