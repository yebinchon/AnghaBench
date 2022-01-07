
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEVKMSG_LOG_MASK_DEFAULT ;
 int DEVKMSG_LOG_MASK_OFF ;
 int DEVKMSG_LOG_MASK_ON ;
 int EINVAL ;
 int devkmsg_log ;
 size_t str_has_prefix (char*,char*) ;

__attribute__((used)) static int __control_devkmsg(char *str)
{
 size_t len;

 if (!str)
  return -EINVAL;

 len = str_has_prefix(str, "on");
 if (len) {
  devkmsg_log = DEVKMSG_LOG_MASK_ON;
  return len;
 }

 len = str_has_prefix(str, "off");
 if (len) {
  devkmsg_log = DEVKMSG_LOG_MASK_OFF;
  return len;
 }

 len = str_has_prefix(str, "ratelimit");
 if (len) {
  devkmsg_log = DEVKMSG_LOG_MASK_DEFAULT;
  return len;
 }

 return -EINVAL;
}
