
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int control_register; } ;


 int HDSPM_AudioInterruptEnable ;
 int HDSPM_Start ;
 int HDSPM_controlRegister ;
 int hdspm_write (struct hdspm*,int ,int) ;

__attribute__((used)) static inline void hdspm_stop_audio(struct hdspm * s)
{
 s->control_register &= ~(HDSPM_Start | HDSPM_AudioInterruptEnable);
 hdspm_write(s, HDSPM_controlRegister, s->control_register);
}
