
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strstr (char const*,char const*) ;

__attribute__((used)) static bool grep(const char *buffer, const char *pattern)
{
 return !!strstr(buffer, pattern);
}
