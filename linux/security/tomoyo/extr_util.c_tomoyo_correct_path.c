
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ tomoyo_correct_word (char const*) ;

bool tomoyo_correct_path(const char *filename)
{
 return *filename == '/' && tomoyo_correct_word(filename);
}
