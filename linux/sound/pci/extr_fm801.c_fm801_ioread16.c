
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fm801 {scalar_t__ port; } ;


 int inw (scalar_t__) ;

__attribute__((used)) static inline u16 fm801_ioread16(struct fm801 *chip, unsigned short offset)
{
 return inw(chip->port + offset);
}
