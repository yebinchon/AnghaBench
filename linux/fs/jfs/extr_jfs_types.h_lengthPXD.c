
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len_addr; } ;
typedef TYPE_1__ pxd_t ;
typedef int __u32 ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static inline __u32 lengthPXD(pxd_t *pxd)
{
 return le32_to_cpu((pxd)->len_addr) & 0xffffff;
}
