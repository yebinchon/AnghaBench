
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_type; } ;
struct rfcomm_pinfo {scalar_t__ role_switch; TYPE_1__* dlc; int sec_level; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {scalar_t__ role_switch; int sec_level; scalar_t__ defer_setup; } ;


 int BT_DBG (char*,struct sock*) ;
 int BT_SECURITY_LOW ;
 int BT_SK_DEFER_SETUP ;
 TYPE_2__* bt_sk (struct sock*) ;
 struct rfcomm_pinfo* rfcomm_pi (struct sock*) ;
 int security_sk_clone (struct sock*,struct sock*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rfcomm_sock_init(struct sock *sk, struct sock *parent)
{
 struct rfcomm_pinfo *pi = rfcomm_pi(sk);

 BT_DBG("sk %p", sk);

 if (parent) {
  sk->sk_type = parent->sk_type;
  pi->dlc->defer_setup = test_bit(BT_SK_DEFER_SETUP,
      &bt_sk(parent)->flags);

  pi->sec_level = rfcomm_pi(parent)->sec_level;
  pi->role_switch = rfcomm_pi(parent)->role_switch;

  security_sk_clone(parent, sk);
 } else {
  pi->dlc->defer_setup = 0;

  pi->sec_level = BT_SECURITY_LOW;
  pi->role_switch = 0;
 }

 pi->dlc->sec_level = pi->sec_level;
 pi->dlc->role_switch = pi->role_switch;
}
