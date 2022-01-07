
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct hybla {int rho_3ls; int rho; int rho2_7ls; int rho2; } ;
struct TYPE_2__ {int srtt_us; } ;


 int USEC_PER_MSEC ;
 struct hybla* inet_csk_ca (struct sock*) ;
 int max_t (int ,int,unsigned int) ;
 int rtt0 ;
 TYPE_1__* tcp_sk (struct sock*) ;
 int u32 ;

__attribute__((used)) static inline void hybla_recalc_param (struct sock *sk)
{
 struct hybla *ca = inet_csk_ca(sk);

 ca->rho_3ls = max_t(u32,
       tcp_sk(sk)->srtt_us / (rtt0 * USEC_PER_MSEC),
       8U);
 ca->rho = ca->rho_3ls >> 3;
 ca->rho2_7ls = (ca->rho_3ls * ca->rho_3ls) << 1;
 ca->rho2 = ca->rho2_7ls >> 7;
}
