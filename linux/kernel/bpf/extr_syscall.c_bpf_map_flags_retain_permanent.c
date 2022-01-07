
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BPF_F_RDONLY ;
 int BPF_F_WRONLY ;

__attribute__((used)) static u32 bpf_map_flags_retain_permanent(u32 flags)
{







 return flags & ~(BPF_F_RDONLY | BPF_F_WRONLY);
}
