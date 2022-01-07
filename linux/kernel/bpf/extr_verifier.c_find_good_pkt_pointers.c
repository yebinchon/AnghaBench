
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct bpf_verifier_state {int curframe; int * frame; } ;
struct bpf_reg_state {scalar_t__ off; scalar_t__ umax_value; } ;
typedef enum bpf_reg_type { ____Placeholder_bpf_reg_type } bpf_reg_type ;


 scalar_t__ MAX_PACKET_OFF ;
 int __find_good_pkt_pointers (int ,struct bpf_reg_state*,int,scalar_t__) ;

__attribute__((used)) static void find_good_pkt_pointers(struct bpf_verifier_state *vstate,
       struct bpf_reg_state *dst_reg,
       enum bpf_reg_type type,
       bool range_right_open)
{
 u16 new_range;
 int i;

 if (dst_reg->off < 0 ||
     (dst_reg->off == 0 && range_right_open))

  return;

 if (dst_reg->umax_value > MAX_PACKET_OFF ||
     dst_reg->umax_value + dst_reg->off > MAX_PACKET_OFF)



  return;

 new_range = dst_reg->off;
 if (range_right_open)
  new_range--;
 for (i = 0; i <= vstate->curframe; i++)
  __find_good_pkt_pointers(vstate->frame[i], dst_reg, type,
      new_range);
}
