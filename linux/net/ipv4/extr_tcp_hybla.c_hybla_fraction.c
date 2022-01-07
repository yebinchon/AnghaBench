
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARRAY_SIZE (int const*) ;

__attribute__((used)) static inline u32 hybla_fraction(u32 odds)
{
 static const u32 fractions[] = {
  128, 139, 152, 165, 181, 197, 215, 234,
 };

 return (odds < ARRAY_SIZE(fractions)) ? fractions[odds] : 128;
}
