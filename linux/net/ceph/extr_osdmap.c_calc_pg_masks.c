
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_pg_pool_info {int pg_num_mask; int pgp_num_mask; scalar_t__ pgp_num; scalar_t__ pg_num; } ;


 int calc_bits_of (scalar_t__) ;

__attribute__((used)) static void calc_pg_masks(struct ceph_pg_pool_info *pi)
{
 pi->pg_num_mask = (1 << calc_bits_of(pi->pg_num-1)) - 1;
 pi->pgp_num_mask = (1 << calc_bits_of(pi->pgp_num-1)) - 1;
}
