
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int bbr_full_bw_reached (struct sock*) ;
 int bbr_reset_probe_bw_mode (struct sock*) ;
 int bbr_reset_startup_mode (struct sock*) ;

__attribute__((used)) static void bbr_reset_mode(struct sock *sk)
{
 if (!bbr_full_bw_reached(sk))
  bbr_reset_startup_mode(sk);
 else
  bbr_reset_probe_bw_mode(sk);
}
