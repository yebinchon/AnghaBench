
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
typedef int __u32 ;


 int ndisc_hashfn (void const*,struct net_device const*,int *) ;

__attribute__((used)) static u32 ndisc_hash(const void *pkey,
        const struct net_device *dev,
        __u32 *hash_rnd)
{
 return ndisc_hashfn(pkey, dev, hash_rnd);
}
