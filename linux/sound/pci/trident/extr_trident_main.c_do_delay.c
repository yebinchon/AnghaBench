
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident {int dummy; } ;


 int schedule_timeout_uninterruptible (int) ;

__attribute__((used)) static inline void do_delay(struct snd_trident *chip)
{
 schedule_timeout_uninterruptible(1);
}
