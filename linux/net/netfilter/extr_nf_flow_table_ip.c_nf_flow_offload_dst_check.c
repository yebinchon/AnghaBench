
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_entry {int dummy; } ;


 scalar_t__ dst_check (struct dst_entry*,int ) ;
 int dst_xfrm (struct dst_entry*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int nf_flow_offload_dst_check(struct dst_entry *dst)
{
 if (unlikely(dst_xfrm(dst)))
  return dst_check(dst, 0) ? 0 : -1;

 return 0;
}
