
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_reg_state {int type; } ;


 int type_is_pkt_pointer (int ) ;

__attribute__((used)) static bool reg_is_pkt_pointer(const struct bpf_reg_state *reg)
{
 return type_is_pkt_pointer(reg->type);
}
