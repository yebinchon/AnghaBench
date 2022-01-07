
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ u8 ;
struct tag {scalar_t__ tagIdent; scalar_t__ tagChecksum; scalar_t__ descVersion; scalar_t__ descCRCLength; scalar_t__ descCRC; int tagLocation; } ;
struct super_block {int s_blocksize; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int brelse (struct buffer_head*) ;
 scalar_t__ cpu_to_le16 (int) ;
 int crc_itu_t (int ,scalar_t__,int) ;
 int le16_to_cpu (scalar_t__) ;
 int le32_to_cpu (int ) ;
 int udf_debug (char*,int,int,int) ;
 int udf_err (struct super_block*,char*,int,int,...) ;
 scalar_t__ udf_tag_checksum (struct tag*) ;
 struct buffer_head* udf_tread (struct super_block*,int) ;

struct buffer_head *udf_read_tagged(struct super_block *sb, uint32_t block,
        uint32_t location, uint16_t *ident)
{
 struct tag *tag_p;
 struct buffer_head *bh = ((void*)0);
 u8 checksum;


 if (block == 0xFFFFFFFF)
  return ((void*)0);

 bh = udf_tread(sb, block);
 if (!bh) {
  udf_err(sb, "read failed, block=%u, location=%u\n",
   block, location);
  return ((void*)0);
 }

 tag_p = (struct tag *)(bh->b_data);

 *ident = le16_to_cpu(tag_p->tagIdent);

 if (location != le32_to_cpu(tag_p->tagLocation)) {
  udf_debug("location mismatch block %u, tag %u != %u\n",
     block, le32_to_cpu(tag_p->tagLocation), location);
  goto error_out;
 }


 checksum = udf_tag_checksum(tag_p);
 if (checksum != tag_p->tagChecksum) {
  udf_err(sb, "tag checksum failed, block %u: 0x%02x != 0x%02x\n",
   block, checksum, tag_p->tagChecksum);
  goto error_out;
 }


 if (tag_p->descVersion != cpu_to_le16(0x0002U) &&
     tag_p->descVersion != cpu_to_le16(0x0003U)) {
  udf_err(sb, "tag version 0x%04x != 0x0002 || 0x0003, block %u\n",
   le16_to_cpu(tag_p->descVersion), block);
  goto error_out;
 }


 if (le16_to_cpu(tag_p->descCRCLength) + sizeof(struct tag) > sb->s_blocksize ||
     le16_to_cpu(tag_p->descCRC) == crc_itu_t(0,
     bh->b_data + sizeof(struct tag),
     le16_to_cpu(tag_p->descCRCLength)))
  return bh;

 udf_debug("Crc failure block %u: crc = %u, crclen = %u\n", block,
    le16_to_cpu(tag_p->descCRC),
    le16_to_cpu(tag_p->descCRCLength));
error_out:
 brelse(bh);
 return ((void*)0);
}
