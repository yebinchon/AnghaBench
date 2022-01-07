
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ip4; } ;
struct flowi {TYPE_1__ u; } ;
struct fib_table {int dummy; } ;
struct fib_rule {int action; int fr_net; } ;
struct fib_result {int dummy; } ;
struct fib_lookup_arg {int flags; scalar_t__ result; } ;


 int EACCES ;
 int EAGAIN ;
 int EINVAL ;
 int ENETUNREACH ;




 struct fib_table* fib_get_table (int ,int ) ;
 int fib_rule_get_table (struct fib_rule*,struct fib_lookup_arg*) ;
 int fib_table_lookup (struct fib_table*,int *,struct fib_result*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int fib4_rule_action(struct fib_rule *rule, struct flowi *flp,
       int flags, struct fib_lookup_arg *arg)
{
 int err = -EAGAIN;
 struct fib_table *tbl;
 u32 tb_id;

 switch (rule->action) {
 case 129:
  break;

 case 128:
  return -ENETUNREACH;

 case 130:
  return -EACCES;

 case 131:
 default:
  return -EINVAL;
 }

 rcu_read_lock();

 tb_id = fib_rule_get_table(rule, arg);
 tbl = fib_get_table(rule->fr_net, tb_id);
 if (tbl)
  err = fib_table_lookup(tbl, &flp->u.ip4,
           (struct fib_result *)arg->result,
           arg->flags);

 rcu_read_unlock();
 return err;
}
