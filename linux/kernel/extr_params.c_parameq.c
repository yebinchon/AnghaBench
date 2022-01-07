
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parameqn (char const*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

bool parameq(const char *a, const char *b)
{
 return parameqn(a, b, strlen(a)+1);
}
