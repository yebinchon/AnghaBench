
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct ocfs2_blockcheck_stats {int dummy; } ;
struct ocfs2_block_check {int bc_ecc; int bc_crc32e; } ;


 int EIO ;
 int ML_ERROR ;
 int cpu_to_le16 (scalar_t__) ;
 int cpu_to_le32 (scalar_t__) ;
 scalar_t__ crc32_le (int ,void*,size_t) ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int memset (struct ocfs2_block_check*,int ,int) ;
 int mlog (int ,char*,unsigned int,unsigned int) ;
 int ocfs2_blockcheck_inc_check (struct ocfs2_blockcheck_stats*) ;
 int ocfs2_blockcheck_inc_failure (struct ocfs2_blockcheck_stats*) ;
 int ocfs2_blockcheck_inc_recover (struct ocfs2_blockcheck_stats*) ;
 scalar_t__ ocfs2_hamming_encode_block (void*,size_t) ;
 int ocfs2_hamming_fix_block (void*,size_t,scalar_t__) ;

int ocfs2_block_check_validate(void *data, size_t blocksize,
          struct ocfs2_block_check *bc,
          struct ocfs2_blockcheck_stats *stats)
{
 int rc = 0;
 u32 bc_crc32e;
 u16 bc_ecc;
 u32 crc, ecc;

 ocfs2_blockcheck_inc_check(stats);

 bc_crc32e = le32_to_cpu(bc->bc_crc32e);
 bc_ecc = le16_to_cpu(bc->bc_ecc);

 memset(bc, 0, sizeof(struct ocfs2_block_check));


 crc = crc32_le(~0, data, blocksize);
 if (crc == bc_crc32e)
  goto out;

 ocfs2_blockcheck_inc_failure(stats);
 mlog(ML_ERROR,
      "CRC32 failed: stored: 0x%x, computed 0x%x. Applying ECC.\n",
      (unsigned int)bc_crc32e, (unsigned int)crc);


 ecc = ocfs2_hamming_encode_block(data, blocksize);
 ocfs2_hamming_fix_block(data, blocksize, ecc ^ bc_ecc);


 crc = crc32_le(~0, data, blocksize);
 if (crc == bc_crc32e) {
  ocfs2_blockcheck_inc_recover(stats);
  goto out;
 }

 mlog(ML_ERROR, "Fixed CRC32 failed: stored: 0x%x, computed 0x%x\n",
      (unsigned int)bc_crc32e, (unsigned int)crc);

 rc = -EIO;

out:
 bc->bc_crc32e = cpu_to_le32(bc_crc32e);
 bc->bc_ecc = cpu_to_le16(bc_ecc);

 return rc;
}
