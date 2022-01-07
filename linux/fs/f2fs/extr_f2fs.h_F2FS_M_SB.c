
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct address_space {int host; } ;


 struct f2fs_sb_info* F2FS_I_SB (int ) ;

__attribute__((used)) static inline struct f2fs_sb_info *F2FS_M_SB(struct address_space *mapping)
{
 return F2FS_I_SB(mapping->host);
}
