
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {scalar_t__ arg; } ;






 int sprintf (char*,char*,int) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static int
param_get_pool_mode(char *buf, const struct kernel_param *kp)
{
 int *ip = (int *)kp->arg;

 switch (*ip)
 {
 case 131:
  return strlcpy(buf, "auto", 20);
 case 130:
  return strlcpy(buf, "global", 20);
 case 129:
  return strlcpy(buf, "percpu", 20);
 case 128:
  return strlcpy(buf, "pernode", 20);
 default:
  return sprintf(buf, "%d", *ip);
 }
}
