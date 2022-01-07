
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char const*,char) ;

__attribute__((used)) static const char *tomoyo_last_word(const char *name)
{
 const char *cp = strrchr(name, ' ');

 if (cp)
  return cp + 1;
 return name;
}
