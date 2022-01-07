
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct o2hb_region {int dummy; } ;
struct o2hb_disk_heartbeat_block {int hb_cksum; } ;


 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ o2hb_compute_block_crc_le (struct o2hb_region*,struct o2hb_disk_heartbeat_block*) ;

__attribute__((used)) static int o2hb_verify_crc(struct o2hb_region *reg,
      struct o2hb_disk_heartbeat_block *hb_block)
{
 u32 read, computed;

 read = le32_to_cpu(hb_block->hb_cksum);
 computed = o2hb_compute_block_crc_le(reg, hb_block);

 return read == computed;
}
