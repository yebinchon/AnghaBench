
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct metadata_dst {int dummy; } ;
typedef int gfp_t ;
typedef enum metadata_type { ____Placeholder_metadata_type } metadata_type ;


 int __metadata_dst_init (struct metadata_dst*,int,scalar_t__) ;
 struct metadata_dst* kmalloc (scalar_t__,int ) ;

struct metadata_dst *metadata_dst_alloc(u8 optslen, enum metadata_type type,
     gfp_t flags)
{
 struct metadata_dst *md_dst;

 md_dst = kmalloc(sizeof(*md_dst) + optslen, flags);
 if (!md_dst)
  return ((void*)0);

 __metadata_dst_init(md_dst, type, optslen);

 return md_dst;
}
