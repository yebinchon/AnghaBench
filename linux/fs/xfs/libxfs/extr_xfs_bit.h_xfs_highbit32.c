
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int fls (int ) ;

__attribute__((used)) static inline int xfs_highbit32(uint32_t v)
{
 return fls(v) - 1;
}
