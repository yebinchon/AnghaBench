
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {struct gprs_dev* sk_user_data; } ;
struct gprs_dev {int dev; } ;


 int gprs_writeable (struct gprs_dev*) ;
 scalar_t__ netif_running (int ) ;

__attribute__((used)) static void gprs_write_space(struct sock *sk)
{
 struct gprs_dev *gp = sk->sk_user_data;

 if (netif_running(gp->dev))
  gprs_writeable(gp);
}
