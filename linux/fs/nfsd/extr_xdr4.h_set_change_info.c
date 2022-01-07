
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {int tv_nsec; int tv_sec; } ;
struct TYPE_6__ {TYPE_2__ ctime; } ;
struct TYPE_4__ {int tv_nsec; int tv_sec; } ;
struct svc_fh {TYPE_3__ fh_post_attr; TYPE_1__ fh_pre_ctime; int fh_post_change; int fh_pre_change; int fh_dentry; scalar_t__ fh_post_saved; int fh_pre_saved; } ;
struct nfsd4_change_info {int after_ctime_nsec; int after_ctime_sec; int before_ctime_nsec; int before_ctime_sec; int after_change; int before_change; int change_supported; scalar_t__ atomic; } ;


 int BUG_ON (int) ;
 int IS_I_VERSION (int ) ;
 int d_inode (int ) ;

__attribute__((used)) static inline void
set_change_info(struct nfsd4_change_info *cinfo, struct svc_fh *fhp)
{
 BUG_ON(!fhp->fh_pre_saved);
 cinfo->atomic = (u32)fhp->fh_post_saved;
 cinfo->change_supported = IS_I_VERSION(d_inode(fhp->fh_dentry));

 cinfo->before_change = fhp->fh_pre_change;
 cinfo->after_change = fhp->fh_post_change;
 cinfo->before_ctime_sec = fhp->fh_pre_ctime.tv_sec;
 cinfo->before_ctime_nsec = fhp->fh_pre_ctime.tv_nsec;
 cinfo->after_ctime_sec = fhp->fh_post_attr.ctime.tv_sec;
 cinfo->after_ctime_nsec = fhp->fh_post_attr.ctime.tv_nsec;

}
