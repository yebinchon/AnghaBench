
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct svc_fh {TYPE_1__* fh_export; TYPE_3__* fh_dentry; } ;
typedef int __be32 ;
struct TYPE_6__ {TYPE_2__* d_sb; } ;
struct TYPE_5__ {int s_dev; } ;
struct TYPE_4__ {scalar_t__ ex_uuid; int ex_fsid; } ;





 int fsid_source (struct svc_fh*) ;
 int huge_encode_dev (int ) ;
 int * xdr_encode_hyper (int *,int ) ;

__attribute__((used)) static __be32 *encode_fsid(__be32 *p, struct svc_fh *fhp)
{
 u64 f;
 switch(fsid_source(fhp)) {
 default:
 case 130:
  p = xdr_encode_hyper(p, (u64)huge_encode_dev
         (fhp->fh_dentry->d_sb->s_dev));
  break;
 case 129:
  p = xdr_encode_hyper(p, (u64) fhp->fh_export->ex_fsid);
  break;
 case 128:
  f = ((u64*)fhp->fh_export->ex_uuid)[0];
  f ^= ((u64*)fhp->fh_export->ex_uuid)[1];
  p = xdr_encode_hyper(p, f);
  break;
 }
 return p;
}
