
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int control_register; } ;


 int HDSP_AudioInterruptEnable ;
 int HDSP_Start ;
 int HDSP_controlRegister ;
 int hdsp_write (struct hdsp*,int ,int) ;

__attribute__((used)) static void hdsp_stop_audio(struct hdsp *s)
{
 s->control_register &= ~(HDSP_Start | HDSP_AudioInterruptEnable);
 hdsp_write(s, HDSP_controlRegister, s->control_register);
}
