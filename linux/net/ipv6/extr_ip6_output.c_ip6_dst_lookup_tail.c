
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_3__ {int dev; } ;
struct rt6_info {TYPE_1__ dst; int from; } ;
struct net {int dummy; } ;
struct neighbour {int nud_state; } ;
struct inet6_ifaddr {int flags; } ;
struct in6_addr {int dummy; } ;
struct flowi6 {int daddr; int saddr; scalar_t__ flowi6_oif; } ;
struct fib6_info {int dummy; } ;
struct dst_entry {int error; int dev; } ;
struct TYPE_4__ {int srcprefs; } ;


 int EAFNOSUPPORT ;
 int EINVAL ;
 int ENETUNREACH ;
 int IFA_F_OPTIMISTIC ;
 int IP6_INC_STATS (struct net*,int *,int ) ;
 int IPSTATS_MIB_OUTNOROUTES ;
 int NUD_VALID ;
 int RT6_LOOKUP_F_IFACE ;
 struct neighbour* __ipv6_neigh_lookup_noref (int ,int ) ;
 int dst_release (struct dst_entry*) ;
 int in6_ifa_put (struct inet6_ifaddr*) ;
 TYPE_2__* inet6_sk (struct sock const*) ;
 int ip6_route_get_saddr (struct net*,struct fib6_info*,int *,int ,int *) ;
 struct dst_entry* ip6_route_output (struct net*,struct sock const*,struct flowi6*) ;
 struct dst_entry* ip6_route_output_flags (struct net*,struct sock const*,struct flowi6*,int) ;
 scalar_t__ ipv6_addr_any (int *) ;
 scalar_t__ ipv6_addr_v4mapped (int *) ;
 struct inet6_ifaddr* ipv6_get_ifaddr (struct net*,int *,int ,int) ;
 int memcpy (struct flowi6*,struct flowi6*,int) ;
 int memset (int *,int ,int) ;
 struct fib6_info* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock () ;
 int rcu_read_unlock_bh () ;
 int rt6_nexthop (struct rt6_info*,int *) ;

__attribute__((used)) static int ip6_dst_lookup_tail(struct net *net, const struct sock *sk,
          struct dst_entry **dst, struct flowi6 *fl6)
{




 int err;
 int flags = 0;
 if (ipv6_addr_any(&fl6->saddr) && (!*dst || !(*dst)->error)) {
  struct fib6_info *from;
  struct rt6_info *rt;
  bool had_dst = *dst != ((void*)0);

  if (!had_dst)
   *dst = ip6_route_output(net, sk, fl6);
  rt = (*dst)->error ? ((void*)0) : (struct rt6_info *)*dst;

  rcu_read_lock();
  from = rt ? rcu_dereference(rt->from) : ((void*)0);
  err = ip6_route_get_saddr(net, from, &fl6->daddr,
       sk ? inet6_sk(sk)->srcprefs : 0,
       &fl6->saddr);
  rcu_read_unlock();

  if (err)
   goto out_err_release;





  if (!had_dst && (*dst)->error) {
   dst_release(*dst);
   *dst = ((void*)0);
  }

  if (fl6->flowi6_oif)
   flags |= RT6_LOOKUP_F_IFACE;
 }

 if (!*dst)
  *dst = ip6_route_output_flags(net, sk, fl6, flags);

 err = (*dst)->error;
 if (err)
  goto out_err_release;
 if (ipv6_addr_v4mapped(&fl6->saddr) &&
     !(ipv6_addr_v4mapped(&fl6->daddr) || ipv6_addr_any(&fl6->daddr))) {
  err = -EAFNOSUPPORT;
  goto out_err_release;
 }

 return 0;

out_err_release:
 dst_release(*dst);
 *dst = ((void*)0);

 if (err == -ENETUNREACH)
  IP6_INC_STATS(net, ((void*)0), IPSTATS_MIB_OUTNOROUTES);
 return err;
}
