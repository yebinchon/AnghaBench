
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int addr2; int len_addr; } ;
typedef TYPE_1__ pxd_t ;
typedef int __u64 ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static inline __u64 addressPXD(pxd_t *pxd)
{
 __u64 n = le32_to_cpu(pxd->len_addr) & ~0xffffff;
 return (n << 8) + le32_to_cpu(pxd->addr2);
}
