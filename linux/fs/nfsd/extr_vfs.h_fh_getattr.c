
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_fh {int fh_dentry; TYPE_2__* fh_export; } ;
struct path {int dentry; int mnt; } ;
struct kstat {int dummy; } ;
typedef int __be32 ;
struct TYPE_3__ {int mnt; } ;
struct TYPE_4__ {TYPE_1__ ex_path; } ;


 int AT_STATX_SYNC_AS_STAT ;
 int STATX_BASIC_STATS ;
 int nfserrno (int ) ;
 int vfs_getattr (struct path*,struct kstat*,int ,int ) ;

__attribute__((used)) static inline __be32 fh_getattr(struct svc_fh *fh, struct kstat *stat)
{
 struct path p = {.mnt = fh->fh_export->ex_path.mnt,
    .dentry = fh->fh_dentry};
 return nfserrno(vfs_getattr(&p, stat, STATX_BASIC_STATS,
        AT_STATX_SYNC_AS_STAT));
}
