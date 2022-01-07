
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
typedef int can_err_mask_t ;


 int CAN_ERR_FLAG ;
 int can_rx_register (struct net*,struct net_device*,int ,int,int ,struct sock*,char*,struct sock*) ;
 int raw_rcv ;

__attribute__((used)) static int raw_enable_errfilter(struct net *net, struct net_device *dev,
    struct sock *sk, can_err_mask_t err_mask)
{
 int err = 0;

 if (err_mask)
  err = can_rx_register(net, dev, 0, err_mask | CAN_ERR_FLAG,
          raw_rcv, sk, "raw", sk);

 return err;
}
