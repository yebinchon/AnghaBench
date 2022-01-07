
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int sctp_memory_pressure ;

__attribute__((used)) static void sctp_enter_memory_pressure(struct sock *sk)
{
 sctp_memory_pressure = 1;
}
