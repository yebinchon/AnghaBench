
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int EINVAL ;
 int OCFS2_ORPHAN_NAMELEN ;
 int mlog_errno (int) ;
 int snprintf (char*,int,char*,long long) ;
 int trace_ocfs2_blkno_stringify (scalar_t__,char*,int) ;

__attribute__((used)) static int ocfs2_blkno_stringify(u64 blkno, char *name)
{
 int status, namelen;

 namelen = snprintf(name, OCFS2_ORPHAN_NAMELEN + 1, "%016llx",
      (long long)blkno);
 if (namelen <= 0) {
  if (namelen)
   status = namelen;
  else
   status = -EINVAL;
  mlog_errno(status);
  goto bail;
 }
 if (namelen != OCFS2_ORPHAN_NAMELEN) {
  status = -EINVAL;
  mlog_errno(status);
  goto bail;
 }

 trace_ocfs2_blkno_stringify(blkno, name, namelen);

 status = 0;
bail:
 if (status < 0)
  mlog_errno(status);
 return status;
}
