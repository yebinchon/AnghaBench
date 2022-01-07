
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct fib_rules_ops {struct net* fro_net; int rules_list; } ;


 int ENOMEM ;
 struct fib_rules_ops* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int __fib_rules_register (struct fib_rules_ops*) ;
 int kfree (struct fib_rules_ops*) ;
 struct fib_rules_ops* kmemdup (struct fib_rules_ops const*,int,int ) ;

struct fib_rules_ops *
fib_rules_register(const struct fib_rules_ops *tmpl, struct net *net)
{
 struct fib_rules_ops *ops;
 int err;

 ops = kmemdup(tmpl, sizeof(*ops), GFP_KERNEL);
 if (ops == ((void*)0))
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(&ops->rules_list);
 ops->fro_net = net;

 err = __fib_rules_register(ops);
 if (err) {
  kfree(ops);
  ops = ERR_PTR(err);
 }

 return ops;
}
