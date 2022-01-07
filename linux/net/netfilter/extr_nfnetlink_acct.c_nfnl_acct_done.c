
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_callback {int data; } ;


 int kfree (int ) ;

__attribute__((used)) static int nfnl_acct_done(struct netlink_callback *cb)
{
 kfree(cb->data);
 return 0;
}
