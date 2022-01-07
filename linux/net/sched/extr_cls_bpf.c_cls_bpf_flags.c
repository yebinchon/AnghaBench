
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CLS_BPF_SUPPORTED_GEN_FLAGS ;

__attribute__((used)) static u32 cls_bpf_flags(u32 flags)
{
 return flags & CLS_BPF_SUPPORTED_GEN_FLAGS;
}
