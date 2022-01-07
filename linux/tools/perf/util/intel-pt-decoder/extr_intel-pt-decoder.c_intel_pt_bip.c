
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int count; int payload; } ;
struct TYPE_4__ {int* mask; int ** val; } ;
struct TYPE_5__ {TYPE_1__ items; } ;
struct intel_pt_decoder {int blk_type_pos; TYPE_3__ packet; TYPE_2__ state; int blk_type; } ;


 int INTEL_PT_BLK_ITEM_ID_CNT ;
 int intel_pt_log (char*,int,int ) ;

__attribute__((used)) static void intel_pt_bip(struct intel_pt_decoder *decoder)
{
 uint32_t id = decoder->packet.count;
 uint32_t bit = 1 << id;
 int pos = decoder->blk_type_pos;

 if (pos < 0 || id >= INTEL_PT_BLK_ITEM_ID_CNT) {
  intel_pt_log("WARNING: Unknown block item %u type %d\n",
        id, decoder->blk_type);
  return;
 }

 if (decoder->state.items.mask[pos] & bit) {
  intel_pt_log("WARNING: Duplicate block item %u type %d\n",
        id, decoder->blk_type);
 }

 decoder->state.items.mask[pos] |= bit;
 decoder->state.items.val[pos][id] = decoder->packet.payload;
}
