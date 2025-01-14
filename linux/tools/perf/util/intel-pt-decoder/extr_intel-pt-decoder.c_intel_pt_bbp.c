
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int is_32_bit; scalar_t__* mask; } ;
struct TYPE_6__ {TYPE_2__ items; } ;
struct TYPE_4__ {scalar_t__ payload; int count; } ;
struct intel_pt_decoder {scalar_t__ prev_pkt_ctx; scalar_t__ blk_type; size_t blk_type_pos; TYPE_3__ state; TYPE_1__ packet; } ;


 scalar_t__ INTEL_PT_GP_REGS ;
 scalar_t__ INTEL_PT_NO_CTX ;
 size_t intel_pt_blk_type_pos (scalar_t__) ;
 int intel_pt_log (char*,scalar_t__) ;
 int memset (scalar_t__*,int ,int) ;

__attribute__((used)) static void intel_pt_bbp(struct intel_pt_decoder *decoder)
{
 if (decoder->prev_pkt_ctx == INTEL_PT_NO_CTX) {
  memset(decoder->state.items.mask, 0, sizeof(decoder->state.items.mask));
  decoder->state.items.is_32_bit = 0;
 }
 decoder->blk_type = decoder->packet.payload;
 decoder->blk_type_pos = intel_pt_blk_type_pos(decoder->blk_type);
 if (decoder->blk_type == INTEL_PT_GP_REGS)
  decoder->state.items.is_32_bit = decoder->packet.count;
 if (decoder->blk_type_pos < 0) {
  intel_pt_log("WARNING: Unknown block type %u\n",
        decoder->blk_type);
 } else if (decoder->state.items.mask[decoder->blk_type_pos]) {
  intel_pt_log("WARNING: Duplicate block type %u\n",
        decoder->blk_type);
 }
}
