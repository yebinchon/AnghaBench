
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ceph_pg {scalar_t__ seed; } ;


 int WARN_ON (int) ;
 int calc_bits_of (scalar_t__) ;
 scalar_t__ ceph_stable_mod (scalar_t__,scalar_t__,int) ;

bool ceph_pg_is_split(const struct ceph_pg *pgid, u32 old_pg_num,
        u32 new_pg_num)
{
 int old_bits = calc_bits_of(old_pg_num);
 int old_mask = (1 << old_bits) - 1;
 int n;

 WARN_ON(pgid->seed >= old_pg_num);
 if (new_pg_num <= old_pg_num)
  return 0;

 for (n = 1; ; n++) {
  int next_bit = n << (old_bits - 1);
  u32 s = next_bit | pgid->seed;

  if (s < old_pg_num || s == pgid->seed)
   continue;
  if (s >= new_pg_num)
   break;

  s = ceph_stable_mod(s, old_pg_num, old_mask);
  if (s == pgid->seed)
   return 1;
 }

 return 0;
}
