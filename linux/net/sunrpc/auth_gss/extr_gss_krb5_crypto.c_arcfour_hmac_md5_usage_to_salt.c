
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;


 int EINVAL ;



__attribute__((used)) static int
arcfour_hmac_md5_usage_to_salt(unsigned int usage, u8 salt[4])
{
 unsigned int ms_usage;

 switch (usage) {
 case 128:
  ms_usage = 15;
  break;
 case 129:
  ms_usage = 13;
  break;
 default:
  return -EINVAL;
 }
 salt[0] = (ms_usage >> 0) & 0xff;
 salt[1] = (ms_usage >> 8) & 0xff;
 salt[2] = (ms_usage >> 16) & 0xff;
 salt[3] = (ms_usage >> 24) & 0xff;

 return 0;
}
