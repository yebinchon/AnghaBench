
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 size_t SECINITSID_NUM ;
 char const** initial_sid_to_string ;
 scalar_t__ unlikely (int) ;

const char *security_get_initial_sid_context(u32 sid)
{
 if (unlikely(sid > SECINITSID_NUM))
  return ((void*)0);
 return initial_sid_to_string[sid];
}
