
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xfrm_pol_inexact_key {int type; int dir; int family; int net; int if_id; } ;


 int jhash_3words (int,int ,int ,int) ;
 int net_hash_mix (int ) ;
 int read_pnet (int *) ;

__attribute__((used)) static u32 xfrm_pol_bin_key(const void *data, u32 len, u32 seed)
{
 const struct xfrm_pol_inexact_key *k = data;
 u32 a = k->type << 24 | k->dir << 16 | k->family;

 return jhash_3words(a, k->if_id, net_hash_mix(read_pnet(&k->net)),
       seed);
}
