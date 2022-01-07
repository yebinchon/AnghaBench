
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int EPIPE ;
 int report_csk_error (struct sock*,int ) ;

__attribute__((used)) static void psock_state_change(struct sock *sk)
{





 report_csk_error(sk, EPIPE);
}
