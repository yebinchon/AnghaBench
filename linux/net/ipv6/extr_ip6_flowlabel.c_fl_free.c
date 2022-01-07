
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_flowlabel {int rcu; scalar_t__ opt; } ;


 int call_rcu (int *,int ) ;
 int fl_free_rcu ;
 scalar_t__ fl_shared_exclusive (struct ip6_flowlabel*) ;
 int ipv6_flowlabel_exclusive ;
 int static_branch_slow_dec_deferred (int *) ;

__attribute__((used)) static void fl_free(struct ip6_flowlabel *fl)
{
 if (!fl)
  return;

 if (fl_shared_exclusive(fl) || fl->opt)
  static_branch_slow_dec_deferred(&ipv6_flowlabel_exclusive);

 call_rcu(&fl->rcu, fl_free_rcu);
}
