
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_path_info {int dummy; } ;


 int strlen (char*) ;
 int tomoyo_correct_word (char*) ;
 struct tomoyo_path_info const* tomoyo_get_name (char*) ;

__attribute__((used)) static const struct tomoyo_path_info *tomoyo_get_dqword(char *start)
{
 char *cp = start + strlen(start) - 1;

 if (cp == start || *start++ != '"' || *cp != '"')
  return ((void*)0);
 *cp = '\0';
 if (*start && !tomoyo_correct_word(start))
  return ((void*)0);
 return tomoyo_get_name(start);
}
