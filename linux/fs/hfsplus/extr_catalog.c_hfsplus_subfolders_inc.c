
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct hfsplus_sb_info {int flags; } ;
struct TYPE_2__ {int subfolders; } ;


 TYPE_1__* HFSPLUS_I (struct inode*) ;
 struct hfsplus_sb_info* HFSPLUS_SB (int ) ;
 int HFSPLUS_SB_HFSX ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void hfsplus_subfolders_inc(struct inode *dir)
{
 struct hfsplus_sb_info *sbi = HFSPLUS_SB(dir->i_sb);

 if (test_bit(HFSPLUS_SB_HFSX, &sbi->flags)) {




  HFSPLUS_I(dir)->subfolders++;
 }
}
