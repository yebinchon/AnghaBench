
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int BT_DBG (char*,struct sock*) ;
 int rfcomm_schedule () ;

__attribute__((used)) static void rfcomm_l2data_ready(struct sock *sk)
{
 BT_DBG("%p", sk);
 rfcomm_schedule();
}
