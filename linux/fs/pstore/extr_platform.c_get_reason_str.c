
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum kmsg_dump_reason { ____Placeholder_kmsg_dump_reason } kmsg_dump_reason ;
__attribute__((used)) static const char *get_reason_str(enum kmsg_dump_reason reason)
{
 switch (reason) {
 case 130:
  return "Panic";
 case 131:
  return "Oops";
 case 133:
  return "Emergency";
 case 128:
  return "Restart";
 case 132:
  return "Halt";
 case 129:
  return "Poweroff";
 default:
  return "Unknown";
 }
}
