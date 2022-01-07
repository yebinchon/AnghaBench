
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,int) ;

__attribute__((used)) static const char *nexttoken(const char *q, int sep)
{
 if (q)
  q = strchr(q, sep);
 if (q)
  q++;
 return q;
}
