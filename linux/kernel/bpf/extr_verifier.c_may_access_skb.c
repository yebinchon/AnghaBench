
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;






__attribute__((used)) static bool may_access_skb(enum bpf_prog_type type)
{
 switch (type) {
 case 128:
 case 129:
 case 130:
  return 1;
 default:
  return 0;
 }
}
