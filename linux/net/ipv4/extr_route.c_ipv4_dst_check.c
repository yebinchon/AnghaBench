
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtable {int dummy; } ;
struct dst_entry {scalar_t__ obsolete; } ;


 scalar_t__ DST_OBSOLETE_FORCE_CHK ;
 scalar_t__ rt_is_expired (struct rtable*) ;

__attribute__((used)) static struct dst_entry *ipv4_dst_check(struct dst_entry *dst, u32 cookie)
{
 struct rtable *rt = (struct rtable *) dst;
 if (dst->obsolete != DST_OBSOLETE_FORCE_CHK || rt_is_expired(rt))
  return ((void*)0);
 return dst;
}
