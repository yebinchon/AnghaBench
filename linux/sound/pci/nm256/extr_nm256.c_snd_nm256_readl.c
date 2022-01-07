
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nm256 {scalar_t__ cport; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32
snd_nm256_readl(struct nm256 *chip, int offset)
{
 return readl(chip->cport + offset);
}
