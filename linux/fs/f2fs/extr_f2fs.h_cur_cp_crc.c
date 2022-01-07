
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_checkpoint {int checksum_offset; } ;
typedef size_t __u64 ;
typedef int __le32 ;


 size_t le32_to_cpu (int ) ;

__attribute__((used)) static inline __u64 cur_cp_crc(struct f2fs_checkpoint *cp)
{
 size_t crc_offset = le32_to_cpu(cp->checksum_offset);
 return le32_to_cpu(*((__le32 *)((unsigned char *)cp + crc_offset)));
}
