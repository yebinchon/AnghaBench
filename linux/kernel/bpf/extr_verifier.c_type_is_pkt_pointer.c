
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_reg_type { ____Placeholder_bpf_reg_type } bpf_reg_type ;


 int PTR_TO_PACKET ;
 int PTR_TO_PACKET_META ;

__attribute__((used)) static bool type_is_pkt_pointer(enum bpf_reg_type type)
{
 return type == PTR_TO_PACKET ||
        type == PTR_TO_PACKET_META;
}
