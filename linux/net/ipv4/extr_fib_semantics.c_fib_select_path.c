
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct flowi4 {int flowi4_flags; scalar_t__ saddr; scalar_t__ flowi4_oif; } ;
struct fib_result {scalar_t__ type; TYPE_1__* table; int prefixlen; int fi; } ;
struct TYPE_2__ {int tb_num_default; } ;


 int FLOWI_FLAG_SKIP_NH_OIF ;
 scalar_t__ RTN_UNICAST ;
 int fib_info_num_path (int ) ;
 int fib_multipath_hash (struct net*,struct flowi4*,struct sk_buff const*,int *) ;
 scalar_t__ fib_result_prefsrc (struct net*,struct fib_result*) ;
 int fib_select_default (struct flowi4*,struct fib_result*) ;
 int fib_select_multipath (struct fib_result*,int) ;

void fib_select_path(struct net *net, struct fib_result *res,
       struct flowi4 *fl4, const struct sk_buff *skb)
{
 if (fl4->flowi4_oif && !(fl4->flowi4_flags & FLOWI_FLAG_SKIP_NH_OIF))
  goto check_saddr;
 if (!res->prefixlen &&
     res->table->tb_num_default > 1 &&
     res->type == RTN_UNICAST)
  fib_select_default(fl4, res);

check_saddr:
 if (!fl4->saddr)
  fl4->saddr = fib_result_prefsrc(net, res);
}
