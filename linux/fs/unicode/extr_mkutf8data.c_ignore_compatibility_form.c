
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char**) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int ignore_compatibility_form(char *type)
{
 int i;
 char *ignored_types[] = {"font", "noBreak", "initial", "medial",
     "final", "isolated", "circle", "super",
     "sub", "vertical", "wide", "narrow",
     "small", "square", "fraction", "compat"};

 for (i = 0 ; i < ARRAY_SIZE(ignored_types); i++)
  if (strcmp(type, ignored_types[i]) == 0)
   return 1;
 return 0;
}
