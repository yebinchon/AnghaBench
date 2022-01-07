
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 char* tomoyo_encode2 (char const*,int ) ;

char *tomoyo_encode(const char *str)
{
 return str ? tomoyo_encode2(str, strlen(str)) : ((void*)0);
}
