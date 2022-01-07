
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len_addr; } ;
typedef TYPE_1__ pxd_t ;
typedef int __u32 ;


 int cpu_to_le32 (int) ;

__attribute__((used)) static inline void PXDlength(pxd_t *pxd, __u32 len)
{
 pxd->len_addr = (pxd->len_addr & cpu_to_le32(~0xffffff)) |
   cpu_to_le32(len & 0xffffff);
}
