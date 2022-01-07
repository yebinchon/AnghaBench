
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int sock_reset_flag (struct sock*,int) ;
 int sock_set_flag (struct sock*,int) ;

__attribute__((used)) static inline void sock_valbool_flag(struct sock *sk, int bit, int valbool)
{
 if (valbool)
  sock_set_flag(sk, bit);
 else
  sock_reset_flag(sk, bit);
}
