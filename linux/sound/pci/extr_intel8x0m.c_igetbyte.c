
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct intel8x0m {scalar_t__ bmaddr; } ;


 int ioread8 (scalar_t__) ;

__attribute__((used)) static inline u8 igetbyte(struct intel8x0m *chip, u32 offset)
{
 return ioread8(chip->bmaddr + offset);
}
