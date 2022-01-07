
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nm256 {scalar_t__ cport; } ;


 int writew (int ,scalar_t__) ;

__attribute__((used)) static inline void
snd_nm256_writew(struct nm256 *chip, int offset, u16 val)
{
 writew(val, chip->cport + offset);
}
