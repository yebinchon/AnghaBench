
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nm256 {scalar_t__ cport; } ;


 int readw (scalar_t__) ;

__attribute__((used)) static inline u16
snd_nm256_readw(struct nm256 *chip, int offset)
{
 return readw(chip->cport + offset);
}
