
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct unix_domain {int dummy; } ;
struct TYPE_3__ {int expiry_time; scalar_t__ flags; } ;
struct ip_map {int m_addr; int m_class; TYPE_1__ h; struct unix_domain* m_client; } ;
struct cache_head {int dummy; } ;
struct cache_detail {int dummy; } ;


 int CACHE_NEGATIVE ;
 int ENOMEM ;
 int IP_HASHBITS ;
 int cache_put (struct cache_head*,struct cache_detail*) ;
 int hash_ip6 (int *) ;
 int hash_str (int ,int ) ;
 int set_bit (int ,scalar_t__*) ;
 struct cache_head* sunrpc_cache_update (struct cache_detail*,TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static int __ip_map_update(struct cache_detail *cd, struct ip_map *ipm,
  struct unix_domain *udom, time_t expiry)
{
 struct ip_map ip;
 struct cache_head *ch;

 ip.m_client = udom;
 ip.h.flags = 0;
 if (!udom)
  set_bit(CACHE_NEGATIVE, &ip.h.flags);
 ip.h.expiry_time = expiry;
 ch = sunrpc_cache_update(cd, &ip.h, &ipm->h,
     hash_str(ipm->m_class, IP_HASHBITS) ^
     hash_ip6(&ipm->m_addr));
 if (!ch)
  return -ENOMEM;
 cache_put(ch, cd);
 return 0;
}
