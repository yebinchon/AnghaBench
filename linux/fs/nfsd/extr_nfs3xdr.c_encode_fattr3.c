
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct user_namespace {int dummy; } ;
struct timespec {int dummy; } ;
struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct kstat {int mode; scalar_t__ size; int ino; int ctime; int mtime; int atime; int rdev; scalar_t__ blocks; int gid; int uid; scalar_t__ nlink; } ;
typedef int __be32 ;


 scalar_t__ MAJOR (int ) ;
 scalar_t__ MINOR (int ) ;
 scalar_t__ NFS3_MAXPATHLEN ;
 int S_IALLUGO ;
 int S_IFMT ;
 scalar_t__ S_ISLNK (int) ;
 int * encode_fsid (int *,struct svc_fh*) ;
 int * encode_time3 (int *,struct timespec*) ;
 scalar_t__ from_kgid_munged (struct user_namespace*,int ) ;
 scalar_t__ from_kuid_munged (struct user_namespace*,int ) ;
 void* htonl (int ) ;
 int * nfs3_ftypes ;
 struct user_namespace* nfsd_user_namespace (struct svc_rqst*) ;
 struct timespec timespec64_to_timespec (int ) ;
 int * xdr_encode_hyper (int *,int) ;

__attribute__((used)) static __be32 *
encode_fattr3(struct svc_rqst *rqstp, __be32 *p, struct svc_fh *fhp,
       struct kstat *stat)
{
 struct user_namespace *userns = nfsd_user_namespace(rqstp);
 struct timespec ts;
 *p++ = htonl(nfs3_ftypes[(stat->mode & S_IFMT) >> 12]);
 *p++ = htonl((u32) (stat->mode & S_IALLUGO));
 *p++ = htonl((u32) stat->nlink);
 *p++ = htonl((u32) from_kuid_munged(userns, stat->uid));
 *p++ = htonl((u32) from_kgid_munged(userns, stat->gid));
 if (S_ISLNK(stat->mode) && stat->size > NFS3_MAXPATHLEN) {
  p = xdr_encode_hyper(p, (u64) NFS3_MAXPATHLEN);
 } else {
  p = xdr_encode_hyper(p, (u64) stat->size);
 }
 p = xdr_encode_hyper(p, ((u64)stat->blocks) << 9);
 *p++ = htonl((u32) MAJOR(stat->rdev));
 *p++ = htonl((u32) MINOR(stat->rdev));
 p = encode_fsid(p, fhp);
 p = xdr_encode_hyper(p, stat->ino);
 ts = timespec64_to_timespec(stat->atime);
 p = encode_time3(p, &ts);
 ts = timespec64_to_timespec(stat->mtime);
 p = encode_time3(p, &ts);
 ts = timespec64_to_timespec(stat->ctime);
 p = encode_time3(p, &ts);

 return p;
}
