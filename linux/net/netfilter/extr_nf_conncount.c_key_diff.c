
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int memcmp (int const*,int const*,unsigned int) ;

__attribute__((used)) static int key_diff(const u32 *a, const u32 *b, unsigned int klen)
{
 return memcmp(a, b, klen * sizeof(u32));
}
