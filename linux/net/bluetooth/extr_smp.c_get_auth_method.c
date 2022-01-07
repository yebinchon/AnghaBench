
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct smp_chan {int flags; } ;


 size_t JUST_CFM ;
 int SMP_FLAG_SC ;
 size_t SMP_IO_KEYBOARD_DISPLAY ;
 size_t** gen_method ;
 size_t** sc_method ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static u8 get_auth_method(struct smp_chan *smp, u8 local_io, u8 remote_io)
{



 if (local_io > SMP_IO_KEYBOARD_DISPLAY ||
     remote_io > SMP_IO_KEYBOARD_DISPLAY)
  return JUST_CFM;

 if (test_bit(SMP_FLAG_SC, &smp->flags))
  return sc_method[remote_io][local_io];

 return gen_method[remote_io][local_io];
}
