
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct super_block {int dummy; } ;
typedef int __fs64 ;
typedef int __fs32 ;
struct TYPE_4__ {TYPE_1__* s_uspi; } ;
struct TYPE_3__ {scalar_t__ fs_magic; } ;


 scalar_t__ UFS2_MAGIC ;
 TYPE_2__* UFS_SB (struct super_block*) ;
 int fs32_to_cpu (struct super_block*,int ) ;
 int fs64_to_cpu (struct super_block*,int ) ;

__attribute__((used)) static inline u64 ufs_data_ptr_to_cpu(struct super_block *sb, void *p)
{
 return UFS_SB(sb)->s_uspi->fs_magic == UFS2_MAGIC ?
  fs64_to_cpu(sb, *(__fs64 *)p) :
  fs32_to_cpu(sb, *(__fs32 *)p);
}
