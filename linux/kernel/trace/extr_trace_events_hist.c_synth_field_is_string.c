
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strstr (char*,char*) ;

__attribute__((used)) static int synth_field_is_string(char *type)
{
 if (strstr(type, "char[") != ((void*)0))
  return 1;

 return 0;
}
