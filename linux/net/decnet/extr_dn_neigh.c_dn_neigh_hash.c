
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
typedef int __u32 ;
typedef int __u16 ;


 int jhash_2words (int ,int ,int ) ;

__attribute__((used)) static u32 dn_neigh_hash(const void *pkey,
    const struct net_device *dev,
    __u32 *hash_rnd)
{
 return jhash_2words(*(__u16 *)pkey, 0, hash_rnd[0]);
}
