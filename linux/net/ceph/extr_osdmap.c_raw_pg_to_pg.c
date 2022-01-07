
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_pg_pool_info {int pg_num_mask; int pg_num; } ;
struct ceph_pg {int seed; int pool; } ;


 int ceph_stable_mod (int ,int ,int ) ;

__attribute__((used)) static void raw_pg_to_pg(struct ceph_pg_pool_info *pi,
    const struct ceph_pg *raw_pgid,
    struct ceph_pg *pgid)
{
 pgid->pool = raw_pgid->pool;
 pgid->seed = ceph_stable_mod(raw_pgid->seed, pi->pg_num,
         pi->pg_num_mask);
}
