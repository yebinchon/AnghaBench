
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfsd_net {int maskbits; } ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int hash_32 (int ,int ) ;

__attribute__((used)) static u32
nfsd_cache_hash(__be32 xid, struct nfsd_net *nn)
{
 return hash_32(be32_to_cpu(xid), nn->maskbits);
}
