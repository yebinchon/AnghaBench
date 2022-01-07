
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_entry {int dev; } ;


 unsigned int dn_mss_from_pmtu (int ,int ) ;
 int dst_mtu (struct dst_entry const*) ;

__attribute__((used)) static unsigned int dn_dst_default_advmss(const struct dst_entry *dst)
{
 return dn_mss_from_pmtu(dst->dev, dst_mtu(dst));
}
