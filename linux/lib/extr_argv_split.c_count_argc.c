
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char const) ;

__attribute__((used)) static int count_argc(const char *str)
{
 int count = 0;
 bool was_space;

 for (was_space = 1; *str; str++) {
  if (isspace(*str)) {
   was_space = 1;
  } else if (was_space) {
   was_space = 0;
   count++;
  }
 }

 return count;
}
