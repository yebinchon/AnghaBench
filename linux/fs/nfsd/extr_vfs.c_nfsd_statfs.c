
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct svc_fh {int fh_dentry; TYPE_2__* fh_export; } ;
struct path {int dentry; int mnt; } ;
struct kstatfs {int dummy; } ;
typedef scalar_t__ __be32 ;
struct TYPE_3__ {int mnt; } ;
struct TYPE_4__ {TYPE_1__ ex_path; } ;


 int NFSD_MAY_NOP ;
 scalar_t__ fh_verify (struct svc_rqst*,struct svc_fh*,int ,int) ;
 scalar_t__ nfserr_io ;
 scalar_t__ vfs_statfs (struct path*,struct kstatfs*) ;

__be32
nfsd_statfs(struct svc_rqst *rqstp, struct svc_fh *fhp, struct kstatfs *stat, int access)
{
 __be32 err;

 err = fh_verify(rqstp, fhp, 0, NFSD_MAY_NOP | access);
 if (!err) {
  struct path path = {
   .mnt = fhp->fh_export->ex_path.mnt,
   .dentry = fhp->fh_dentry,
  };
  if (vfs_statfs(&path, stat))
   err = nfserr_io;
 }
 return err;
}
