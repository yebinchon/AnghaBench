
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ceph_hobject_id {int hash_reverse_bits; scalar_t__ is_max; } ;



__attribute__((used)) static u64 hoid_get_bitwise_key(const struct ceph_hobject_id *hoid)
{
 return hoid->is_max ? 0x100000000ull : hoid->hash_reverse_bits;
}
