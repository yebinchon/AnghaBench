
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int start; } ;
typedef TYPE_1__ jsmntok_t ;


 int json_len (TYPE_1__*) ;
 char* realloc (char*,unsigned int) ;
 int strcat (char*,char const*) ;
 int strlen (char const*) ;
 int strncat (char*,char*,int) ;

__attribute__((used)) static void addfield(char *map, char **dst, const char *sep,
       const char *a, jsmntok_t *bt)
{
 unsigned int len = strlen(a) + 1 + strlen(sep);
 int olen = *dst ? strlen(*dst) : 0;
 int blen = bt ? json_len(bt) : 0;
 char *out;

 out = realloc(*dst, len + olen + blen);
 if (!out) {

  return;
 }
 *dst = out;

 if (!olen)
  *(*dst) = 0;
 else
  strcat(*dst, sep);
 strcat(*dst, a);
 if (bt)
  strncat(*dst, map + bt->start, blen);
}
