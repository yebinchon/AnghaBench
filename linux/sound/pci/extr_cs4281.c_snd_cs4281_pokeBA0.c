
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs4281 {scalar_t__ ba0; } ;


 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void snd_cs4281_pokeBA0(struct cs4281 *chip, unsigned long offset,
          unsigned int val)
{
        writel(val, chip->ba0 + offset);
}
