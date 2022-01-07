
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_multiport_v1 {int count; int flags; } ;
struct xt_mtchk_param {struct xt_multiport_v1* matchinfo; struct ip6t_ip6* entryinfo; } ;
struct ip6t_ip6 {int invflags; int proto; } ;


 int EINVAL ;
 scalar_t__ check (int ,int ,int ,int ) ;

__attribute__((used)) static int multiport_mt6_check(const struct xt_mtchk_param *par)
{
 const struct ip6t_ip6 *ip = par->entryinfo;
 const struct xt_multiport_v1 *multiinfo = par->matchinfo;

 return check(ip->proto, ip->invflags, multiinfo->flags,
       multiinfo->count) ? 0 : -EINVAL;
}
