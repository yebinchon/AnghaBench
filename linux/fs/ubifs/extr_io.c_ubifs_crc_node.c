
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ubifs_info {int dummy; } ;
struct ubifs_ch {int crc; } ;


 int UBIFS_CRC32_INIT ;
 int cpu_to_le32 (int ) ;
 int crc32 (int ,void*,int) ;

void ubifs_crc_node(struct ubifs_info *c, void *node, int len)
{
 struct ubifs_ch *ch = node;
 uint32_t crc;

 crc = crc32(UBIFS_CRC32_INIT, node + 8, len - 8);
 ch->crc = cpu_to_le32(crc);
}
