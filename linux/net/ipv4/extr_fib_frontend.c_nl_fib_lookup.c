
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct flowi4 {int flowi4_scope; int flowi4_tos; int daddr; int flowi4_mark; } ;
struct fib_table {int tb_id; } ;
struct fib_result_nl {int scope; int type; int nh_sel; int prefixlen; int err; int tb_id; int tb_id_in; int fl_scope; int fl_tos; int fl_addr; int fl_mark; } ;
struct fib_result {int scope; int type; int nh_sel; int prefixlen; } ;


 int ENOENT ;
 int FIB_LOOKUP_NOREF ;
 struct fib_table* fib_get_table (struct net*,int ) ;
 int fib_table_lookup (struct fib_table*,struct flowi4*,struct fib_result*,int ) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void nl_fib_lookup(struct net *net, struct fib_result_nl *frn)
{

 struct fib_result res;
 struct flowi4 fl4 = {
  .flowi4_mark = frn->fl_mark,
  .daddr = frn->fl_addr,
  .flowi4_tos = frn->fl_tos,
  .flowi4_scope = frn->fl_scope,
 };
 struct fib_table *tb;

 rcu_read_lock();

 tb = fib_get_table(net, frn->tb_id_in);

 frn->err = -ENOENT;
 if (tb) {
  local_bh_disable();

  frn->tb_id = tb->tb_id;
  frn->err = fib_table_lookup(tb, &fl4, &res, FIB_LOOKUP_NOREF);

  if (!frn->err) {
   frn->prefixlen = res.prefixlen;
   frn->nh_sel = res.nh_sel;
   frn->type = res.type;
   frn->scope = res.scope;
  }
  local_bh_enable();
 }

 rcu_read_unlock();
}
