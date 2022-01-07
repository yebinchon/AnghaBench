
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_verifier_state {int dummy; } ;
struct bpf_reg_state {int type; } ;
struct bpf_insn {int code; } ;


 scalar_t__ BPF_CLASS (int ) ;




 scalar_t__ BPF_JMP32 ;
 int BPF_OP (int ) ;
 scalar_t__ BPF_SRC (int ) ;
 scalar_t__ BPF_X ;
 int PTR_TO_PACKET ;
 int PTR_TO_PACKET_END ;
 int PTR_TO_PACKET_META ;
 int find_good_pkt_pointers (struct bpf_verifier_state*,struct bpf_reg_state*,int ,int) ;
 int reg_is_init_pkt_pointer (struct bpf_reg_state*,int ) ;

__attribute__((used)) static bool try_match_pkt_pointers(const struct bpf_insn *insn,
       struct bpf_reg_state *dst_reg,
       struct bpf_reg_state *src_reg,
       struct bpf_verifier_state *this_branch,
       struct bpf_verifier_state *other_branch)
{
 if (BPF_SRC(insn->code) != BPF_X)
  return 0;


 if (BPF_CLASS(insn->code) == BPF_JMP32)
  return 0;

 switch (BPF_OP(insn->code)) {
 case 130:
  if ((dst_reg->type == PTR_TO_PACKET &&
       src_reg->type == PTR_TO_PACKET_END) ||
      (dst_reg->type == PTR_TO_PACKET_META &&
       reg_is_init_pkt_pointer(src_reg, PTR_TO_PACKET))) {

   find_good_pkt_pointers(this_branch, dst_reg,
            dst_reg->type, 0);
  } else if ((dst_reg->type == PTR_TO_PACKET_END &&
       src_reg->type == PTR_TO_PACKET) ||
      (reg_is_init_pkt_pointer(dst_reg, PTR_TO_PACKET) &&
       src_reg->type == PTR_TO_PACKET_META)) {

   find_good_pkt_pointers(other_branch, src_reg,
            src_reg->type, 1);
  } else {
   return 0;
  }
  break;
 case 128:
  if ((dst_reg->type == PTR_TO_PACKET &&
       src_reg->type == PTR_TO_PACKET_END) ||
      (dst_reg->type == PTR_TO_PACKET_META &&
       reg_is_init_pkt_pointer(src_reg, PTR_TO_PACKET))) {

   find_good_pkt_pointers(other_branch, dst_reg,
            dst_reg->type, 1);
  } else if ((dst_reg->type == PTR_TO_PACKET_END &&
       src_reg->type == PTR_TO_PACKET) ||
      (reg_is_init_pkt_pointer(dst_reg, PTR_TO_PACKET) &&
       src_reg->type == PTR_TO_PACKET_META)) {

   find_good_pkt_pointers(this_branch, src_reg,
            src_reg->type, 0);
  } else {
   return 0;
  }
  break;
 case 131:
  if ((dst_reg->type == PTR_TO_PACKET &&
       src_reg->type == PTR_TO_PACKET_END) ||
      (dst_reg->type == PTR_TO_PACKET_META &&
       reg_is_init_pkt_pointer(src_reg, PTR_TO_PACKET))) {

   find_good_pkt_pointers(this_branch, dst_reg,
            dst_reg->type, 1);
  } else if ((dst_reg->type == PTR_TO_PACKET_END &&
       src_reg->type == PTR_TO_PACKET) ||
      (reg_is_init_pkt_pointer(dst_reg, PTR_TO_PACKET) &&
       src_reg->type == PTR_TO_PACKET_META)) {

   find_good_pkt_pointers(other_branch, src_reg,
            src_reg->type, 0);
  } else {
   return 0;
  }
  break;
 case 129:
  if ((dst_reg->type == PTR_TO_PACKET &&
       src_reg->type == PTR_TO_PACKET_END) ||
      (dst_reg->type == PTR_TO_PACKET_META &&
       reg_is_init_pkt_pointer(src_reg, PTR_TO_PACKET))) {

   find_good_pkt_pointers(other_branch, dst_reg,
            dst_reg->type, 0);
  } else if ((dst_reg->type == PTR_TO_PACKET_END &&
       src_reg->type == PTR_TO_PACKET) ||
      (reg_is_init_pkt_pointer(dst_reg, PTR_TO_PACKET) &&
       src_reg->type == PTR_TO_PACKET_META)) {

   find_good_pkt_pointers(this_branch, src_reg,
            src_reg->type, 1);
  } else {
   return 0;
  }
  break;
 default:
  return 0;
 }

 return 1;
}
