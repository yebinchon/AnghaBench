
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int audit_failure ;
 int panic (char*,char const*) ;
 int pr_err (char*,char const*) ;
 int printk_ratelimit () ;

void audit_panic(const char *message)
{
 switch (audit_failure) {
 case 128:
  break;
 case 129:
  if (printk_ratelimit())
   pr_err("%s\n", message);
  break;
 case 130:
  panic("audit: %s\n", message);
  break;
 }
}
