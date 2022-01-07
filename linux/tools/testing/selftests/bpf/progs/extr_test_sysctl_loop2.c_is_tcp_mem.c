
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcp_mem_name ;
struct bpf_sysctl {int dummy; } ;
typedef int name ;


 int bpf_sysctl_get_name (struct bpf_sysctl*,char*,int,int ) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static __attribute__((noinline)) int is_tcp_mem(struct bpf_sysctl *ctx)
{
 volatile char tcp_mem_name[] = "net/ipv4/tcp_mem/very_very_very_very_long_pointless_string_to_stress_byte_loop";
 unsigned char i;
 char name[64];
 int ret;

 memset(name, 0, sizeof(name));
 ret = bpf_sysctl_get_name(ctx, name, sizeof(name), 0);
 if (ret < 0 || ret != sizeof(tcp_mem_name) - 1)
  return 0;

#pragma clang loop unroll(disable)
 for (i = 0; i < sizeof(tcp_mem_name); ++i)
  if (name[i] != tcp_mem_name[i])
   return 0;

 return 1;
}
