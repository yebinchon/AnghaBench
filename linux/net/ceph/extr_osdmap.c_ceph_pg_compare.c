
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_pg {scalar_t__ pool; scalar_t__ seed; } ;



int ceph_pg_compare(const struct ceph_pg *lhs, const struct ceph_pg *rhs)
{
 if (lhs->pool < rhs->pool)
  return -1;
 if (lhs->pool > rhs->pool)
  return 1;
 if (lhs->seed < rhs->seed)
  return -1;
 if (lhs->seed > rhs->seed)
  return 1;

 return 0;
}
