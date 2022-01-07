
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigit (char const) ;
 int isxdigit (char const) ;
 int strncmp (char const*,char const*,int) ;
 int tomoyo_alphabet_char (char const) ;
 int tomoyo_byte_range (char const*) ;

__attribute__((used)) static bool tomoyo_file_matches_pattern2(const char *filename,
      const char *filename_end,
      const char *pattern,
      const char *pattern_end)
{
 while (filename < filename_end && pattern < pattern_end) {
  char c;
  int i;
  int j;

  if (*pattern != '\\') {
   if (*filename++ != *pattern++)
    return 0;
   continue;
  }
  c = *filename;
  pattern++;
  switch (*pattern) {
  case '?':
   if (c == '/') {
    return 0;
   } else if (c == '\\') {
    if (filename[1] == '\\')
     filename++;
    else if (tomoyo_byte_range(filename + 1))
     filename += 3;
    else
     return 0;
   }
   break;
  case '\\':
   if (c != '\\')
    return 0;
   if (*++filename != '\\')
    return 0;
   break;
  case '+':
   if (!isdigit(c))
    return 0;
   break;
  case 'x':
   if (!isxdigit(c))
    return 0;
   break;
  case 'a':
   if (!tomoyo_alphabet_char(c))
    return 0;
   break;
  case '0':
  case '1':
  case '2':
  case '3':
   if (c == '\\' && tomoyo_byte_range(filename + 1)
       && strncmp(filename + 1, pattern, 3) == 0) {
    filename += 3;
    pattern += 2;
    break;
   }
   return 0;
  case '*':
  case '@':
   for (i = 0; i <= filename_end - filename; i++) {
    if (tomoyo_file_matches_pattern2(
          filename + i, filename_end,
          pattern + 1, pattern_end))
     return 1;
    c = filename[i];
    if (c == '.' && *pattern == '@')
     break;
    if (c != '\\')
     continue;
    if (filename[i + 1] == '\\')
     i++;
    else if (tomoyo_byte_range(filename + i + 1))
     i += 3;
    else
     break;
   }
   return 0;
  default:
   j = 0;
   c = *pattern;
   if (c == '$') {
    while (isdigit(filename[j]))
     j++;
   } else if (c == 'X') {
    while (isxdigit(filename[j]))
     j++;
   } else if (c == 'A') {
    while (tomoyo_alphabet_char(filename[j]))
     j++;
   }
   for (i = 1; i <= j; i++) {
    if (tomoyo_file_matches_pattern2(
          filename + i, filename_end,
          pattern + 1, pattern_end))
     return 1;
   }
   return 0;
  }
  filename++;
  pattern++;
 }
 while (*pattern == '\\' &&
        (*(pattern + 1) == '*' || *(pattern + 1) == '@'))
  pattern += 2;
 return filename == filename_end && pattern == pattern_end;
}
