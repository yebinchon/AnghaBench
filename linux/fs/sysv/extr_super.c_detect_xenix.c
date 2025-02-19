
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenix_super_block {int s_type; int s_magic; } ;
struct sysv_sb_info {void* s_type; int s_bytesex; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef scalar_t__ __le32 ;
typedef scalar_t__ __be32 ;


 int BYTESEX_BE ;
 int BYTESEX_LE ;
 void* FSTYPE_XENIX ;
 scalar_t__ cpu_to_be32 (int) ;
 scalar_t__ cpu_to_le32 (int) ;
 int fs32_to_cpu (struct sysv_sb_info*,int ) ;

__attribute__((used)) static int detect_xenix(struct sysv_sb_info *sbi, struct buffer_head *bh)
{
 struct xenix_super_block *sbd = (struct xenix_super_block *)bh->b_data;
 if (*(__le32 *)&sbd->s_magic == cpu_to_le32(0x2b5544))
  sbi->s_bytesex = BYTESEX_LE;
 else if (*(__be32 *)&sbd->s_magic == cpu_to_be32(0x2b5544))
  sbi->s_bytesex = BYTESEX_BE;
 else
  return 0;
 switch (fs32_to_cpu(sbi, sbd->s_type)) {
 case 1:
  sbi->s_type = FSTYPE_XENIX;
  return 1;
 case 2:
  sbi->s_type = FSTYPE_XENIX;
  return 2;
 default:
  return 0;
 }
}
