
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int EALREADY ;
 int EBADMSG ;
 int EBADRQC ;
 int EBUSY ;
 int ECOMM ;
 int ECONNREFUSED ;
 int EHOSTDOWN ;
 int EMSGSIZE ;
 int ENOSYS ;
 int EPROTO ;
 int ETIMEDOUT ;
int nci_to_errno(__u8 code)
{
 switch (code) {
 case 137:
  return 0;

 case 136:
  return -EBUSY;

 case 135:
  return -EBADMSG;

 case 138:
  return -EHOSTDOWN;

 case 130:
 case 131:
 case 144:
 case 134:
 case 141:
  return -EPROTO;

 case 129:
 case 128:
  return -EBADRQC;

 case 143:
  return -EMSGSIZE;

 case 147:
  return -EALREADY;

 case 146:
 case 142:
  return -ECONNREFUSED;

 case 132:
 case 139:
  return -ECOMM;

 case 133:
 case 140:
  return -ETIMEDOUT;

 case 145:
 default:
  return -ENOSYS;
 }
}
