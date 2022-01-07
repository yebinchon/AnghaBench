
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
bus_str(int bus)
{
 switch (bus) {
 case 129:
  return "USB";
  break;
 case 130:
  return "HIL";
  break;
 case 131:
  return "Bluetooth";
  break;
 case 128:
  return "Virtual";
  break;
 default:
  return "Other";
  break;
 }
}
