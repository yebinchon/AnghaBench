
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
typedef int __le32 ;
typedef int __fs32 ;
typedef int __be32 ;
struct TYPE_2__ {scalar_t__ s_bytesex; } ;


 scalar_t__ BYTESEX_LE ;
 TYPE_1__* UFS_SB (struct super_block*) ;
 int be32_add_cpu (int *,int) ;
 int le32_add_cpu (int *,int) ;

__attribute__((used)) static inline void
fs32_sub(struct super_block *sbp, __fs32 *n, int d)
{
 if (UFS_SB(sbp)->s_bytesex == BYTESEX_LE)
  le32_add_cpu((__le32 *)n, -d);
 else
  be32_add_cpu((__be32 *)n, -d);
}
