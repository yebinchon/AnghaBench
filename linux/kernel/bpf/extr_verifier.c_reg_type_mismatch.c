
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_reg_type { ____Placeholder_bpf_reg_type } bpf_reg_type ;


 int reg_type_mismatch_ok (int) ;

__attribute__((used)) static bool reg_type_mismatch(enum bpf_reg_type src, enum bpf_reg_type prev)
{
 return src != prev && (!reg_type_mismatch_ok(src) ||
          !reg_type_mismatch_ok(prev));
}
