
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_entry {int dummy; } ;


 unsigned int dst_metric_advmss (int ) ;
 int xfrm_dst_path (struct dst_entry const*) ;

__attribute__((used)) static unsigned int xfrm_default_advmss(const struct dst_entry *dst)
{
 return dst_metric_advmss(xfrm_dst_path(dst));
}
