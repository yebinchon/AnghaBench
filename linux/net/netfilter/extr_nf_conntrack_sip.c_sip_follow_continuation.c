
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *sip_follow_continuation(const char *dptr, const char *limit)
{

 if (++dptr >= limit)
  return ((void*)0);


 if (*(dptr - 1) == '\r' && *dptr == '\n') {
  if (++dptr >= limit)
   return ((void*)0);
 }


 if (*dptr != ' ' && *dptr != '\t')
  return ((void*)0);


 for (; dptr < limit; dptr++) {
  if (*dptr != ' ' && *dptr != '\t')
   break;
 }
 return dptr;
}
