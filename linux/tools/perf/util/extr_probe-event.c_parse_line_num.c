
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ errno ;
 int semantic_error (char*,char const*) ;
 int strtol (char*,char**,int ) ;

__attribute__((used)) static int parse_line_num(char **ptr, int *val, const char *what)
{
 const char *start = *ptr;

 errno = 0;
 *val = strtol(*ptr, ptr, 0);
 if (errno || *ptr == start) {
  semantic_error("'%s' is not a valid number.\n", what);
  return -EINVAL;
 }
 return 0;
}
