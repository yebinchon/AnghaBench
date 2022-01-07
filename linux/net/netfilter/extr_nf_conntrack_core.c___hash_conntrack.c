
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nf_conntrack_tuple {int dummy; } ;
struct net {int dummy; } ;


 int hash_conntrack_raw (struct nf_conntrack_tuple const*,struct net const*) ;
 int reciprocal_scale (int ,unsigned int) ;

__attribute__((used)) static u32 __hash_conntrack(const struct net *net,
       const struct nf_conntrack_tuple *tuple,
       unsigned int size)
{
 return reciprocal_scale(hash_conntrack_raw(tuple, net), size);
}
