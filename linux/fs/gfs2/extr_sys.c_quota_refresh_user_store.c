
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kqid {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
typedef int ssize_t ;


 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int EPERM ;
 int USRQUOTA ;
 int capable (int ) ;
 int current_user_ns () ;
 int gfs2_quota_refresh (struct gfs2_sbd*,struct kqid) ;
 int kstrtou32 (char const*,int ,int *) ;
 struct kqid make_kqid (int ,int ,int ) ;
 int qid_valid (struct kqid) ;

__attribute__((used)) static ssize_t quota_refresh_user_store(struct gfs2_sbd *sdp, const char *buf,
     size_t len)
{
 struct kqid qid;
 int error;
 u32 id;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 error = kstrtou32(buf, 0, &id);
 if (error)
  return error;

 qid = make_kqid(current_user_ns(), USRQUOTA, id);
 if (!qid_valid(qid))
  return -EINVAL;

 error = gfs2_quota_refresh(sdp, qid);
 return error ? error : len;
}
