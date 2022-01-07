
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t TOMOYO_MAX_CONDITION_KEYWORD ;
 int strcmp (char const*,int ) ;
 int * tomoyo_condition_keyword ;

__attribute__((used)) static u8 tomoyo_condition_type(const char *word)
{
 u8 i;

 for (i = 0; i < TOMOYO_MAX_CONDITION_KEYWORD; i++) {
  if (!strcmp(word, tomoyo_condition_keyword[i]))
   break;
 }
 return i;
}
