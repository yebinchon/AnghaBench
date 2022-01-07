
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct user_namespace {int dummy; } ;
struct timespec {int dummy; } ;
struct iattr {int ia_valid; int ia_mtime; int ia_atime; scalar_t__ ia_size; int ia_gid; int ia_uid; int ia_mode; } ;
typedef int __be32 ;


 int ATTR_ATIME ;
 int ATTR_ATIME_SET ;
 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_MTIME ;
 int ATTR_MTIME_SET ;
 int ATTR_SIZE ;
 int ATTR_UID ;
 int NFS2_SATTR_NOT_SET ;
 int NFS_sattr_sz ;
 void* cpu_to_be32 (int ) ;
 int from_kgid_munged (struct user_namespace*,int ) ;
 int from_kuid_munged (struct user_namespace*,int ) ;
 struct timespec timespec64_to_timespec (int ) ;
 int * xdr_encode_current_server_time (int *,struct timespec*) ;
 int * xdr_encode_time (int *,struct timespec*) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;
 int * xdr_time_not_set (int *) ;

__attribute__((used)) static void encode_sattr(struct xdr_stream *xdr, const struct iattr *attr,
  struct user_namespace *userns)
{
 struct timespec ts;
 __be32 *p;

 p = xdr_reserve_space(xdr, NFS_sattr_sz << 2);

 if (attr->ia_valid & ATTR_MODE)
  *p++ = cpu_to_be32(attr->ia_mode);
 else
  *p++ = cpu_to_be32(NFS2_SATTR_NOT_SET);
 if (attr->ia_valid & ATTR_UID)
  *p++ = cpu_to_be32(from_kuid_munged(userns, attr->ia_uid));
 else
  *p++ = cpu_to_be32(NFS2_SATTR_NOT_SET);
 if (attr->ia_valid & ATTR_GID)
  *p++ = cpu_to_be32(from_kgid_munged(userns, attr->ia_gid));
 else
  *p++ = cpu_to_be32(NFS2_SATTR_NOT_SET);
 if (attr->ia_valid & ATTR_SIZE)
  *p++ = cpu_to_be32((u32)attr->ia_size);
 else
  *p++ = cpu_to_be32(NFS2_SATTR_NOT_SET);

 if (attr->ia_valid & ATTR_ATIME_SET) {
  ts = timespec64_to_timespec(attr->ia_atime);
  p = xdr_encode_time(p, &ts);
 } else if (attr->ia_valid & ATTR_ATIME) {
  ts = timespec64_to_timespec(attr->ia_atime);
  p = xdr_encode_current_server_time(p, &ts);
 } else
  p = xdr_time_not_set(p);
 if (attr->ia_valid & ATTR_MTIME_SET) {
  ts = timespec64_to_timespec(attr->ia_atime);
  xdr_encode_time(p, &ts);
 } else if (attr->ia_valid & ATTR_MTIME) {
  ts = timespec64_to_timespec(attr->ia_mtime);
  xdr_encode_current_server_time(p, &ts);
 } else
  xdr_time_not_set(p);
}
