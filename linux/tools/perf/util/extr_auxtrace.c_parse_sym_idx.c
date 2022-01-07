
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned long INT_MAX ;
 int errno ;
 int strspn (char*,char*) ;
 unsigned long strtoul (char*,char**,int ) ;

__attribute__((used)) static int parse_sym_idx(char **inp, int *idx)
{
 *idx = -1;

 *inp += strspn(*inp, " ");

 if (**inp != '#')
  return 0;

 *inp += 1;

 if (**inp == 'g' || **inp == 'G') {
  *inp += 1;
  *idx = 0;
 } else {
  unsigned long num;
  char *endptr;

  errno = 0;
  num = strtoul(*inp, &endptr, 0);
  if (errno)
   return -errno;
  if (endptr == *inp || num > INT_MAX)
   return -EINVAL;
  *inp = endptr;
  *idx = num;
 }

 return 0;
}
