
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCP_FO_SYSCTL ;
 int TCP_SYNCOOKIE_SYSCTL ;
 int saved_tcp_fo ;
 int saved_tcp_syncookie ;
 int write_int_sysctl (int ,int ) ;

__attribute__((used)) static void restore_sysctls(void)
{
 write_int_sysctl(TCP_FO_SYSCTL, saved_tcp_fo);
 write_int_sysctl(TCP_SYNCOOKIE_SYSCTL, saved_tcp_syncookie);
}
