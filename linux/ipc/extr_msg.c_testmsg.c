
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_msg {long m_type; } ;
__attribute__((used)) static int testmsg(struct msg_msg *msg, long type, int mode)
{
 switch (mode) {
 case 132:
 case 128:
  return 1;
 case 130:
  if (msg->m_type <= type)
   return 1;
  break;
 case 131:
  if (msg->m_type == type)
   return 1;
  break;
 case 129:
  if (msg->m_type != type)
   return 1;
  break;
 }
 return 0;
}
