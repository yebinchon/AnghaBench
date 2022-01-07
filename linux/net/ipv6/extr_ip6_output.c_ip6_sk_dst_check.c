
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct rt6_info {int rt6i_src; int rt6i_dst; } ;
struct ipv6_pinfo {int saddr_cache; int daddr_cache; } ;
struct flowi6 {int flowi6_flags; scalar_t__ flowi6_oif; int saddr; int daddr; } ;
struct dst_entry {TYPE_2__* dev; TYPE_1__* ops; } ;
struct TYPE_4__ {scalar_t__ ifindex; } ;
struct TYPE_3__ {scalar_t__ family; } ;


 scalar_t__ AF_INET6 ;
 int FLOWI_FLAG_SKIP_NH_OIF ;
 int dst_release (struct dst_entry*) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 scalar_t__ ip6_rt_check (int *,int *,int ) ;

__attribute__((used)) static struct dst_entry *ip6_sk_dst_check(struct sock *sk,
       struct dst_entry *dst,
       const struct flowi6 *fl6)
{
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct rt6_info *rt;

 if (!dst)
  goto out;

 if (dst->ops->family != AF_INET6) {
  dst_release(dst);
  return ((void*)0);
 }

 rt = (struct rt6_info *)dst;
 if (ip6_rt_check(&rt->rt6i_dst, &fl6->daddr, np->daddr_cache) ||



    (!(fl6->flowi6_flags & FLOWI_FLAG_SKIP_NH_OIF) &&
       (fl6->flowi6_oif && fl6->flowi6_oif != dst->dev->ifindex))) {
  dst_release(dst);
  dst = ((void*)0);
 }

out:
 return dst;
}
