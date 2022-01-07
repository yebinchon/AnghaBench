
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int tomoyo_correct_word2 (char const*,int ) ;

bool tomoyo_correct_word(const char *string)
{
 return tomoyo_correct_word2(string, strlen(string));
}
