
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int endsym (char const) ;

__attribute__((used)) static const char *
skipsym(const char *cp)
{
 while (!endsym(*cp))
  ++cp;
 return (cp);
}
