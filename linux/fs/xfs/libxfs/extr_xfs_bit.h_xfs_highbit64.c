
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int fls64 (int ) ;

__attribute__((used)) static inline int xfs_highbit64(uint64_t v)
{
 return fls64(v) - 1;
}
