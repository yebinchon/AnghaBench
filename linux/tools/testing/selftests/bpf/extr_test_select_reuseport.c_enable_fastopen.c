
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCP_FO_SYSCTL ;
 int read_int_sysctl (int ) ;
 int write_int_sysctl (int ,int) ;

__attribute__((used)) static void enable_fastopen(void)
{
 int fo;

 fo = read_int_sysctl(TCP_FO_SYSCTL);
 write_int_sysctl(TCP_FO_SYSCTL, fo | 7);
}
