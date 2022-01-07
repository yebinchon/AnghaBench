
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct ocfs2_block_check {int bc_ecc; int bc_crc32e; } ;


 int BUG_ON (int) ;
 scalar_t__ USHRT_MAX ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (scalar_t__) ;
 scalar_t__ crc32_le (int ,void*,size_t) ;
 int memset (struct ocfs2_block_check*,int ,int) ;
 scalar_t__ ocfs2_hamming_encode_block (void*,size_t) ;

void ocfs2_block_check_compute(void *data, size_t blocksize,
          struct ocfs2_block_check *bc)
{
 u32 crc;
 u32 ecc;

 memset(bc, 0, sizeof(struct ocfs2_block_check));

 crc = crc32_le(~0, data, blocksize);
 ecc = ocfs2_hamming_encode_block(data, blocksize);





 BUG_ON(ecc > USHRT_MAX);

 bc->bc_crc32e = cpu_to_le32(crc);
 bc->bc_ecc = cpu_to_le16((u16)ecc);
}
