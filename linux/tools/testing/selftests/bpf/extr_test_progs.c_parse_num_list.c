
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_selector {int* num_set; int num_set_len; } ;


 int EINVAL ;
 int ENOMEM ;
 int errno ;
 int free (int*) ;
 int* realloc (int*,int) ;
 int strtol (char const*,char**,int) ;

int parse_num_list(const char *s, struct test_selector *sel)
{
 int i, set_len = 0, num, start = 0, end = -1;
 bool *set = ((void*)0), *tmp, parsing_end = 0;
 char *next;

 while (s[0]) {
  errno = 0;
  num = strtol(s, &next, 10);
  if (errno)
   return -errno;

  if (parsing_end)
   end = num;
  else
   start = num;

  if (!parsing_end && *next == '-') {
   s = next + 1;
   parsing_end = 1;
   continue;
  } else if (*next == ',') {
   parsing_end = 0;
   s = next + 1;
   end = num;
  } else if (*next == '\0') {
   parsing_end = 0;
   s = next;
   end = num;
  } else {
   return -EINVAL;
  }

  if (start > end)
   return -EINVAL;

  if (end + 1 > set_len) {
   set_len = end + 1;
   tmp = realloc(set, set_len);
   if (!tmp) {
    free(set);
    return -ENOMEM;
   }
   set = tmp;
  }
  for (i = start; i <= end; i++) {
   set[i] = 1;
  }

 }

 if (!set)
  return -EINVAL;

 sel->num_set = set;
 sel->num_set_len = set_len;

 return 0;
}
