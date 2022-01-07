
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isprint (unsigned char) ;
 scalar_t__ strchr (char*,char) ;

__attribute__((used)) static bool isstring(char c)
{
 return (isprint((unsigned char)c)
  || (c == '\0')
  || strchr("\a\b\t\n\v\f\r", c));
}
