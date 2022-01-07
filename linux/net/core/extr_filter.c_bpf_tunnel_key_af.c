
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 unsigned short AF_INET ;
 unsigned short AF_INET6 ;
 int BPF_F_TUNINFO_IPV6 ;

__attribute__((used)) static unsigned short bpf_tunnel_key_af(u64 flags)
{
 return flags & BPF_F_TUNINFO_IPV6 ? AF_INET6 : AF_INET;
}
