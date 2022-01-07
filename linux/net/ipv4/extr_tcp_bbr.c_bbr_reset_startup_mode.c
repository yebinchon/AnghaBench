
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct bbr {int mode; } ;


 int BBR_STARTUP ;
 struct bbr* inet_csk_ca (struct sock*) ;

__attribute__((used)) static void bbr_reset_startup_mode(struct sock *sk)
{
 struct bbr *bbr = inet_csk_ca(sk);

 bbr->mode = BBR_STARTUP;
}
