
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_spg {scalar_t__ shard; int pgid; } ;


 int ceph_pg_compare (int *,int *) ;

int ceph_spg_compare(const struct ceph_spg *lhs, const struct ceph_spg *rhs)
{
 int ret;

 ret = ceph_pg_compare(&lhs->pgid, &rhs->pgid);
 if (ret)
  return ret;

 if (lhs->shard < rhs->shard)
  return -1;
 if (lhs->shard > rhs->shard)
  return 1;

 return 0;
}
