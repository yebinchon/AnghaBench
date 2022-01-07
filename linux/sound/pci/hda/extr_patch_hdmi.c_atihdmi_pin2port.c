
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int atihdmi_pin2port(void *audio_ptr, int pin_nid)
{
 return pin_nid / 2 - 1;
}
