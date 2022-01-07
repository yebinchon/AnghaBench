
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fm801 {scalar_t__ port; } ;


 int outw (int ,scalar_t__) ;

__attribute__((used)) static inline void fm801_iowrite16(struct fm801 *chip, unsigned short offset, u16 value)
{
 outw(value, chip->port + offset);
}
