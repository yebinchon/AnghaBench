
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_reg_state {int type; scalar_t__ id; scalar_t__ off; int var_off; } ;
typedef enum bpf_reg_type { ____Placeholder_bpf_reg_type } bpf_reg_type ;


 scalar_t__ tnum_equals_const (int ,int ) ;

__attribute__((used)) static bool reg_is_init_pkt_pointer(const struct bpf_reg_state *reg,
        enum bpf_reg_type which)
{




 return reg->type == which &&
        reg->id == 0 &&
        reg->off == 0 &&
        tnum_equals_const(reg->var_off, 0);
}
