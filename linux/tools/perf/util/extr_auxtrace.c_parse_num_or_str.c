
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EINVAL ;
 int errno ;
 scalar_t__ isdigit (char) ;
 size_t strcspn (char*,char const*) ;
 int strspn (char*,char*) ;
 int strtoull (char*,char**,int ) ;

__attribute__((used)) static int parse_num_or_str(char **inp, u64 *num, const char **str,
       const char *str_delim)
{
 *inp += strspn(*inp, " ");

 if (isdigit(**inp)) {
  char *endptr;

  if (!num)
   return -EINVAL;
  errno = 0;
  *num = strtoull(*inp, &endptr, 0);
  if (errno)
   return -errno;
  if (endptr == *inp)
   return -EINVAL;
  *inp = endptr;
 } else {
  size_t n;

  if (!str)
   return -EINVAL;
  *inp += strspn(*inp, " ");
  *str = *inp;
  n = strcspn(*inp, str_delim);
  if (!n)
   return -EINVAL;
  *inp += n;
  if (**inp) {
   **inp = '\0';
   *inp += 1;
  }
 }
 return 0;
}
