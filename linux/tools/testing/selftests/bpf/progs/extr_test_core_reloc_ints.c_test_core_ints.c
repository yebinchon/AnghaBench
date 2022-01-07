
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct core_reloc_ints {int s64_field; int u64_field; int s32_field; int u32_field; int s16_field; int u16_field; int s8_field; int u8_field; } ;
struct TYPE_2__ {int out; int in; } ;


 scalar_t__ BPF_CORE_READ (int *,int *) ;
 TYPE_1__ data ;

int test_core_ints(void *ctx)
{
 struct core_reloc_ints *in = (void *)&data.in;
 struct core_reloc_ints *out = (void *)&data.out;

 if (BPF_CORE_READ(&out->u8_field, &in->u8_field) ||
     BPF_CORE_READ(&out->s8_field, &in->s8_field) ||
     BPF_CORE_READ(&out->u16_field, &in->u16_field) ||
     BPF_CORE_READ(&out->s16_field, &in->s16_field) ||
     BPF_CORE_READ(&out->u32_field, &in->u32_field) ||
     BPF_CORE_READ(&out->s32_field, &in->s32_field) ||
     BPF_CORE_READ(&out->u64_field, &in->u64_field) ||
     BPF_CORE_READ(&out->s64_field, &in->s64_field))
  return 1;

 return 0;
}
