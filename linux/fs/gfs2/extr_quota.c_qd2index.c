
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kqid {scalar_t__ type; } ;
struct gfs2_quota_data {struct kqid qd_id; } ;


 scalar_t__ USRQUOTA ;
 scalar_t__ from_kqid (int *,struct kqid) ;
 int init_user_ns ;

__attribute__((used)) static u64 qd2index(struct gfs2_quota_data *qd)
{
 struct kqid qid = qd->qd_id;
 return (2 * (u64)from_kqid(&init_user_ns, qid)) +
  ((qid.type == USRQUOTA) ? 0 : 1);
}
