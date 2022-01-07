
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *event_type(int type)
{
 switch (type) {
 case 131:
  return "hardware";

 case 129:
  return "software";

 case 128:
  return "tracepoint";

 case 130:
  return "hardware-cache";

 default:
  break;
 }

 return "unknown";
}
