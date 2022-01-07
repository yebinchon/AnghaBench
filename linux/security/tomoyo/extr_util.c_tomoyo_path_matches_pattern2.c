
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 int tomoyo_file_matches_pattern (char const*,char const*,char const*,char const*) ;

__attribute__((used)) static bool tomoyo_path_matches_pattern2(const char *f, const char *p)
{
 const char *f_delimiter;
 const char *p_delimiter;

 while (*f && *p) {
  f_delimiter = strchr(f, '/');
  if (!f_delimiter)
   f_delimiter = f + strlen(f);
  p_delimiter = strchr(p, '/');
  if (!p_delimiter)
   p_delimiter = p + strlen(p);
  if (*p == '\\' && *(p + 1) == '{')
   goto recursive;
  if (!tomoyo_file_matches_pattern(f, f_delimiter, p,
       p_delimiter))
   return 0;
  f = f_delimiter;
  if (*f)
   f++;
  p = p_delimiter;
  if (*p)
   p++;
 }

 while (*p == '\\' &&
        (*(p + 1) == '*' || *(p + 1) == '@'))
  p += 2;
 return !*f && !*p;
 recursive:






 if (*(p - 1) != '/' || p_delimiter <= p + 3 || *p_delimiter != '/' ||
     *(p_delimiter - 1) != '}' || *(p_delimiter - 2) != '\\')
  return 0;
 do {

  if (!tomoyo_file_matches_pattern(f, f_delimiter, p + 2,
       p_delimiter - 2))
   break;

  f = f_delimiter;
  if (!*f)
   break;
  f++;

  if (tomoyo_path_matches_pattern2(f, p_delimiter + 1))
   return 1;
  f_delimiter = strchr(f, '/');
 } while (f_delimiter);
 return 0;
}
