
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t suspend_state_t ;


 size_t PM_SUSPEND_MAX ;
 size_t PM_SUSPEND_MIN ;
 size_t PM_SUSPEND_ON ;
 char* memchr (char const*,char,size_t) ;
 char** pm_states ;
 scalar_t__ str_has_prefix (char const*,char*) ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;

__attribute__((used)) static suspend_state_t decode_state(const char *buf, size_t n)
{



 char *p;
 int len;

 p = memchr(buf, '\n', n);
 len = p ? p - buf : n;


 if (len == 4 && str_has_prefix(buf, "disk"))
  return PM_SUSPEND_MAX;
 return PM_SUSPEND_ON;
}
