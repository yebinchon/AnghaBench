
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ iswordc (char const) ;

__attribute__((used)) static int word_len(const char *dptr, const char *limit)
{
 int len = 0;
 while (dptr < limit && iswordc(*dptr)) {
  dptr++;
  len++;
 }
 return len;
}
