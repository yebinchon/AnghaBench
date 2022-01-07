
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct ceph_pg_pool_info {int flags; int pgp_num_mask; int pgp_num; } ;
struct ceph_pg {scalar_t__ pool; int seed; } ;


 int CEPH_POOL_FLAG_HASHPSPOOL ;
 int CRUSH_HASH_RJENKINS1 ;
 unsigned int ceph_stable_mod (int ,int ,int ) ;
 unsigned int crush_hash32_2 (int ,unsigned int,scalar_t__) ;

__attribute__((used)) static u32 raw_pg_to_pps(struct ceph_pg_pool_info *pi,
    const struct ceph_pg *raw_pgid)
{
 if (pi->flags & CEPH_POOL_FLAG_HASHPSPOOL) {

  return crush_hash32_2(CRUSH_HASH_RJENKINS1,
          ceph_stable_mod(raw_pgid->seed,
            pi->pgp_num,
            pi->pgp_num_mask),
          raw_pgid->pool);
 } else {






  return ceph_stable_mod(raw_pgid->seed, pi->pgp_num,
           pi->pgp_num_mask) +
         (unsigned)raw_pgid->pool;
 }
}
