
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct fib_notifier_ops {int dummy; } ;


 int ENOMEM ;
 struct fib_notifier_ops* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int __fib_notifier_ops_register (struct fib_notifier_ops*,struct net*) ;
 int kfree (struct fib_notifier_ops*) ;
 struct fib_notifier_ops* kmemdup (struct fib_notifier_ops const*,int,int ) ;

struct fib_notifier_ops *
fib_notifier_ops_register(const struct fib_notifier_ops *tmpl, struct net *net)
{
 struct fib_notifier_ops *ops;
 int err;

 ops = kmemdup(tmpl, sizeof(*ops), GFP_KERNEL);
 if (!ops)
  return ERR_PTR(-ENOMEM);

 err = __fib_notifier_ops_register(ops, net);
 if (err)
  goto err_register;

 return ops;

err_register:
 kfree(ops);
 return ERR_PTR(err);
}
