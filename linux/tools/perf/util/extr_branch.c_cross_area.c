
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static bool cross_area(u64 addr1, u64 addr2, int size)
{
 u64 align1, align2;

 align1 = addr1 & ~(size - 1);
 align2 = addr2 & ~(size - 1);

 return (align1 != align2) ? 1 : 0;
}
