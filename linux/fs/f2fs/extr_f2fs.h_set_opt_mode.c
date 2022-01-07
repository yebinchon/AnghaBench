
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;


 int ADAPTIVE ;


 int LFS ;
 int clear_opt (struct f2fs_sb_info*,int ) ;
 int set_opt (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static inline void set_opt_mode(struct f2fs_sb_info *sbi, unsigned int mt)
{
 clear_opt(sbi, ADAPTIVE);
 clear_opt(sbi, LFS);

 switch (mt) {
 case 129:
  set_opt(sbi, ADAPTIVE);
  break;
 case 128:
  set_opt(sbi, LFS);
  break;
 }
}
