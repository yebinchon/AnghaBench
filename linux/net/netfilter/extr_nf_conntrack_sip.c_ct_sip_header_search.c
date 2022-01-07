
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* sip_follow_continuation (char const*,char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,unsigned int) ;

__attribute__((used)) static const char *ct_sip_header_search(const char *dptr, const char *limit,
     const char *needle, unsigned int len)
{
 for (limit -= len; dptr < limit; dptr++) {
  if (*dptr == '\r' || *dptr == '\n') {
   dptr = sip_follow_continuation(dptr, limit);
   if (dptr == ((void*)0))
    break;
   continue;
  }

  if (strncasecmp(dptr, needle, len) == 0)
   return dptr;
 }
 return ((void*)0);
}
