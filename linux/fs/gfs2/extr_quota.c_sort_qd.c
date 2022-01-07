
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_quota_data {int qd_id; } ;


 scalar_t__ qid_lt (int ,int ) ;

__attribute__((used)) static int sort_qd(const void *a, const void *b)
{
 const struct gfs2_quota_data *qd_a = *(const struct gfs2_quota_data **)a;
 const struct gfs2_quota_data *qd_b = *(const struct gfs2_quota_data **)b;

 if (qid_lt(qd_a->qd_id, qd_b->qd_id))
  return -1;
 if (qid_lt(qd_b->qd_id, qd_a->qd_id))
  return 1;
 return 0;
}
