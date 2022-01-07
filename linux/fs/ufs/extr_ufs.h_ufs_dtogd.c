
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ufs_sb_private_info {int s_fpg; } ;


 int do_div (int ,int ) ;

__attribute__((used)) static inline u32 ufs_dtogd(struct ufs_sb_private_info * uspi, u64 b)
{
 return do_div(b, uspi->s_fpg);
}
