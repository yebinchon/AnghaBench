
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int SEL_NETNODE_HASH_SIZE ;

__attribute__((used)) static unsigned int sel_netnode_hashfn_ipv4(__be32 addr)
{


 return (addr & (SEL_NETNODE_HASH_SIZE - 1));
}
