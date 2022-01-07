
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xt_mtchk_param {int matchinfo; int match; struct ip6t_ip6* entryinfo; } ;
struct TYPE_3__ {int match; } ;
struct TYPE_4__ {scalar_t__ match_size; TYPE_1__ kernel; } ;
struct xt_entry_match {TYPE_2__ u; int data; } ;
struct ip6t_ip6 {int invflags; int proto; } ;


 int IP6T_INV_PROTO ;
 int xt_check_match (struct xt_mtchk_param*,scalar_t__,int ,int) ;

__attribute__((used)) static int check_match(struct xt_entry_match *m, struct xt_mtchk_param *par)
{
 const struct ip6t_ip6 *ipv6 = par->entryinfo;

 par->match = m->u.kernel.match;
 par->matchinfo = m->data;

 return xt_check_match(par, m->u.match_size - sizeof(*m),
         ipv6->proto, ipv6->invflags & IP6T_INV_PROTO);
}
