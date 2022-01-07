
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mpu401 {int dummy; } ;


 int MPU401D (struct snd_mpu401 const*) ;
 int outb (int ,int ) ;

__attribute__((used)) static inline void initialise_mpu401(const struct snd_mpu401 *mpu)
{
 outb(0, MPU401D(mpu));
}
