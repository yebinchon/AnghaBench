
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCP_SYNCOOKIE_SYSCTL ;
 int write_int_sysctl (int ,int ) ;

__attribute__((used)) static void disable_syncookie(void)
{
 write_int_sysctl(TCP_SYNCOOKIE_SYSCTL, 0);
}
