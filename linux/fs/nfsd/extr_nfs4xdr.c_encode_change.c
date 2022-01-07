
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_export {int ex_flags; TYPE_2__* cd; } ;
struct TYPE_3__ {int tv_nsec; int tv_sec; } ;
struct kstat {TYPE_1__ ctime; } ;
struct inode {int dummy; } ;
typedef int __be32 ;
struct TYPE_4__ {int flush_time; } ;


 scalar_t__ IS_I_VERSION (struct inode*) ;
 int NFSEXP_V4ROOT ;
 int convert_to_wallclock (int ) ;
 void* cpu_to_be32 (int ) ;
 int nfsd4_change_attribute (struct kstat*,struct inode*) ;
 int * xdr_encode_hyper (int *,int ) ;

__attribute__((used)) static __be32 *encode_change(__be32 *p, struct kstat *stat, struct inode *inode,
        struct svc_export *exp)
{
 if (exp->ex_flags & NFSEXP_V4ROOT) {
  *p++ = cpu_to_be32(convert_to_wallclock(exp->cd->flush_time));
  *p++ = 0;
 } else if (IS_I_VERSION(inode)) {
  p = xdr_encode_hyper(p, nfsd4_change_attribute(stat, inode));
 } else {
  *p++ = cpu_to_be32(stat->ctime.tv_sec);
  *p++ = cpu_to_be32(stat->ctime.tv_nsec);
 }
 return p;
}
