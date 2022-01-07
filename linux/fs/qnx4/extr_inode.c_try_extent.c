
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int xtnt_blk; int xtnt_size; } ;
typedef TYPE_1__ qnx4_xtnt_t ;


 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static inline u32 try_extent(qnx4_xtnt_t *extent, u32 *offset)
{
 u32 size = le32_to_cpu(extent->xtnt_size);
 if (*offset < size)
  return le32_to_cpu(extent->xtnt_blk) + *offset - 1;
 *offset -= size;
 return 0;
}
