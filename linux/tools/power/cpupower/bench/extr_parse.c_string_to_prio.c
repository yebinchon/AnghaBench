
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum sched_prio { ____Placeholder_sched_prio } sched_prio ;


 int SCHED_DEFAULT ;
 int SCHED_ERR ;
 int SCHED_HIGH ;
 int SCHED_LOW ;
 int strlen (char const*) ;
 scalar_t__ strncasecmp (char*,char const*,int ) ;

enum sched_prio string_to_prio(const char *str)
{
 if (strncasecmp("high", str, strlen(str)) == 0)
  return SCHED_HIGH;
 else if (strncasecmp("default", str, strlen(str)) == 0)
  return SCHED_DEFAULT;
 else if (strncasecmp("low", str, strlen(str)) == 0)
  return SCHED_LOW;
 else
  return SCHED_ERR;
}
