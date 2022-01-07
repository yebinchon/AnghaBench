
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib6_info {scalar_t__ dst_host; scalar_t__ dst_nopolicy; scalar_t__ dst_nocount; } ;


 unsigned short DST_HOST ;
 unsigned short DST_NOCOUNT ;
 unsigned short DST_NOPOLICY ;

__attribute__((used)) static unsigned short fib6_info_dst_flags(struct fib6_info *rt)
{
 unsigned short flags = 0;

 if (rt->dst_nocount)
  flags |= DST_NOCOUNT;
 if (rt->dst_nopolicy)
  flags |= DST_NOPOLICY;
 if (rt->dst_host)
  flags |= DST_HOST;

 return flags;
}
