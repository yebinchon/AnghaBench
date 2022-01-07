
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void sanitize_event_name(char *name)
{
 while (*name++ != '\0')
  if (*name == ':' || *name == '.')
   *name = '_';
}
