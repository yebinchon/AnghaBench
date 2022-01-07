
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct raw_sock {int count; int filter; int err_mask; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;


 int raw_disable_filters (struct net*,struct net_device*,struct sock*,int ,int ) ;
 int raw_enable_errfilter (struct net*,struct net_device*,struct sock*,int ) ;
 int raw_enable_filters (struct net*,struct net_device*,struct sock*,int ,int ) ;
 struct raw_sock* raw_sk (struct sock*) ;

__attribute__((used)) static int raw_enable_allfilters(struct net *net, struct net_device *dev,
     struct sock *sk)
{
 struct raw_sock *ro = raw_sk(sk);
 int err;

 err = raw_enable_filters(net, dev, sk, ro->filter, ro->count);
 if (!err) {
  err = raw_enable_errfilter(net, dev, sk, ro->err_mask);
  if (err)
   raw_disable_filters(net, dev, sk, ro->filter,
         ro->count);
 }

 return err;
}
