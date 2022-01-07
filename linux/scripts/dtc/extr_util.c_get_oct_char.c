
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int strncpy (char*,char const*,int) ;
 long strtol (char*,char**,int) ;

__attribute__((used)) static char get_oct_char(const char *s, int *i)
{
 char x[4];
 char *endx;
 long val;

 x[3] = '\0';
 strncpy(x, s + *i, 3);

 val = strtol(x, &endx, 8);

 assert(endx > x);

 (*i) += endx - x;
 return val;
}
