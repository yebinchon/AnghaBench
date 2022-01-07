
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_dst {int dummy; } ;
struct dst_entry {int dummy; } ;


 int xfrm_bundle_ok (struct xfrm_dst*) ;

__attribute__((used)) static int stale_bundle(struct dst_entry *dst)
{
 return !xfrm_bundle_ok((struct xfrm_dst *)dst);
}
