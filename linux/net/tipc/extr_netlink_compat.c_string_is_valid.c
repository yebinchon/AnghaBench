
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memchr (char*,char,int) ;

__attribute__((used)) static inline bool string_is_valid(char *s, int len)
{
 return memchr(s, '\0', len) ? 1 : 0;
}
