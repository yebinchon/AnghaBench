
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned get_full_speed_hz(unsigned int usb_rate)
{
 return (usb_rate * 125 + (1 << 12)) >> 13;
}
