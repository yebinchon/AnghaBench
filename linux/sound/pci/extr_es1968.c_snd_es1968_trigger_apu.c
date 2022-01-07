
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es1968 {int dummy; } ;


 int __apu_get_register (struct es1968*,int,int ) ;
 int __apu_set_register (struct es1968*,int,int ,int) ;

__attribute__((used)) static inline void snd_es1968_trigger_apu(struct es1968 *esm, int apu, int mode)
{

 __apu_set_register(esm, apu, 0,
      (__apu_get_register(esm, apu, 0) & 0xff0f) |
      (mode << 4));
}
