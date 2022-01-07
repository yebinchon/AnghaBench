
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct f2fs_io_info {int new_blkaddr; int old_blkaddr; struct f2fs_sb_info* sbi; } ;


 int DATA_GENERIC ;
 int DATA_GENERIC_ENHANCE ;
 int META_GENERIC ;
 scalar_t__ __is_meta_io (struct f2fs_io_info*) ;
 scalar_t__ __is_valid_data_blkaddr (int ) ;
 int verify_blkaddr (struct f2fs_sb_info*,int ,int ) ;

__attribute__((used)) static inline void verify_fio_blkaddr(struct f2fs_io_info *fio)
{
 struct f2fs_sb_info *sbi = fio->sbi;

 if (__is_valid_data_blkaddr(fio->old_blkaddr))
  verify_blkaddr(sbi, fio->old_blkaddr, __is_meta_io(fio) ?
     META_GENERIC : DATA_GENERIC);
 verify_blkaddr(sbi, fio->new_blkaddr, __is_meta_io(fio) ?
     META_GENERIC : DATA_GENERIC_ENHANCE);
}
