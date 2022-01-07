
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char tomoyo_make_byte (unsigned char,unsigned char,unsigned char) ;

__attribute__((used)) static bool tomoyo_correct_word2(const char *string, size_t len)
{
 const char *const start = string;
 bool in_repetition = 0;
 unsigned char c;
 unsigned char d;
 unsigned char e;

 if (!len)
  goto out;
 while (len--) {
  c = *string++;
  if (c == '\\') {
   if (!len--)
    goto out;
   c = *string++;
   switch (c) {
   case '\\':
    continue;
   case '$':
   case '+':
   case '?':
   case '*':
   case '@':
   case 'x':
   case 'X':
   case 'a':
   case 'A':
   case '-':
    continue;
   case '{':
    if (string - 3 < start || *(string - 3) != '/')
     break;
    in_repetition = 1;
    continue;
   case '}':
    if (*string != '/')
     break;
    if (!in_repetition)
     break;
    in_repetition = 0;
    continue;
   case '0':
   case '1':
   case '2':
   case '3':
    if (!len-- || !len--)
     break;
    d = *string++;
    e = *string++;
    if (d < '0' || d > '7' || e < '0' || e > '7')
     break;
    c = tomoyo_make_byte(c, d, e);
    if (c <= ' ' || c >= 127)
     continue;
   }
   goto out;
  } else if (in_repetition && c == '/') {
   goto out;
  } else if (c <= ' ' || c >= 127) {
   goto out;
  }
 }
 if (in_repetition)
  goto out;
 return 1;
 out:
 return 0;
}
