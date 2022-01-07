
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_extent {int ee_len; } ;


 int BUG_ON (int) ;
 int EXT_INIT_MAX_LEN ;
 int cpu_to_le16 (int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline void ext4_ext_mark_unwritten(struct ext4_extent *ext)
{

 BUG_ON((le16_to_cpu(ext->ee_len) & ~EXT_INIT_MAX_LEN) == 0);
 ext->ee_len |= cpu_to_le16(EXT_INIT_MAX_LEN);
}
