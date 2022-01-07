
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERANGE ;
 scalar_t__ errno ;
 scalar_t__ strtoul (char const*,char**,int ) ;

__attribute__((used)) static int str_to_uint(const char *str, int min, int max, unsigned int *value)
{
 int number;
 char *end;

 errno = 0;
 number = (unsigned int) strtoul(str, &end, 0);




 if (((*end == '\0') || (*end == '\n')) && (end != str) &&
     (errno != ERANGE) && (min <= number) && (number <= max)) {
  *value = number;
  return 0;
 }

 return -1;
}
