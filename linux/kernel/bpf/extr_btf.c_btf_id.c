
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct btf {int id; } ;



u32 btf_id(const struct btf *btf)
{
 return btf->id;
}
