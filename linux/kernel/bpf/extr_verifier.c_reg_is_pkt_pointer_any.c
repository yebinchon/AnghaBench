
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_reg_state {scalar_t__ type; } ;


 scalar_t__ PTR_TO_PACKET_END ;
 scalar_t__ reg_is_pkt_pointer (struct bpf_reg_state const*) ;

__attribute__((used)) static bool reg_is_pkt_pointer_any(const struct bpf_reg_state *reg)
{
 return reg_is_pkt_pointer(reg) ||
        reg->type == PTR_TO_PACKET_END;
}
