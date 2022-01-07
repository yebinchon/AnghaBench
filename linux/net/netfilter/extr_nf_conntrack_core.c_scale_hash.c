
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int nf_conntrack_htable_size ;
 int reciprocal_scale (int ,int ) ;

__attribute__((used)) static u32 scale_hash(u32 hash)
{
 return reciprocal_scale(hash, nf_conntrack_htable_size);
}
