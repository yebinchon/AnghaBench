
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dst_entry {scalar_t__ obsolete; } ;


 int stale_bundle (struct dst_entry*) ;

__attribute__((used)) static struct dst_entry *xfrm_dst_check(struct dst_entry *dst, u32 cookie)
{
 if (dst->obsolete < 0 && !stale_bundle(dst))
  return dst;

 return ((void*)0);
}
