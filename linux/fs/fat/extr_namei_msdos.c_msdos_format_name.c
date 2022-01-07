
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fat_mount_options {char name_check; int nocase; scalar_t__ dotsOK; } ;


 int EINVAL ;
 int MSDOS_NAME ;
 int bad_chars ;
 int bad_if_strict ;
 scalar_t__ strchr (int ,unsigned char) ;

__attribute__((used)) static int msdos_format_name(const unsigned char *name, int len,
        unsigned char *res, struct fat_mount_options *opts)






{
 unsigned char *walk;
 unsigned char c;
 int space;

 if (name[0] == '.') {
  if (opts->dotsOK) {

   name++;
   len--;
  } else
   return -EINVAL;
 }



 space = 1;
 c = 0;
 for (walk = res; len && walk - res < 8; walk++) {
  c = *name++;
  len--;
  if (opts->name_check != 'r' && strchr(bad_chars, c))
   return -EINVAL;
  if (opts->name_check == 's' && strchr(bad_if_strict, c))
   return -EINVAL;
  if (c >= 'A' && c <= 'Z' && opts->name_check == 's')
   return -EINVAL;
  if (c < ' ' || c == ':' || c == '\\')
   return -EINVAL;
  if ((res == walk) && (c == 0xE5))
   c = 0x05;
  if (c == '.')
   break;
  space = (c == ' ');
  *walk = (!opts->nocase && c >= 'a' && c <= 'z') ? c - 32 : c;
 }
 if (space)
  return -EINVAL;
 if (opts->name_check == 's' && len && c != '.') {
  c = *name++;
  len--;
  if (c != '.')
   return -EINVAL;
 }
 while (c != '.' && len--)
  c = *name++;
 if (c == '.') {
  while (walk - res < 8)
   *walk++ = ' ';
  while (len > 0 && walk - res < MSDOS_NAME) {
   c = *name++;
   len--;
   if (opts->name_check != 'r' && strchr(bad_chars, c))
    return -EINVAL;
   if (opts->name_check == 's' &&
       strchr(bad_if_strict, c))
    return -EINVAL;
   if (c < ' ' || c == ':' || c == '\\')
    return -EINVAL;
   if (c == '.') {
    if (opts->name_check == 's')
     return -EINVAL;
    break;
   }
   if (c >= 'A' && c <= 'Z' && opts->name_check == 's')
    return -EINVAL;
   space = c == ' ';
   if (!opts->nocase && c >= 'a' && c <= 'z')
    *walk++ = c - 32;
   else
    *walk++ = c;
  }
  if (space)
   return -EINVAL;
  if (opts->name_check == 's' && len)
   return -EINVAL;
 }
 while (walk - res < MSDOS_NAME)
  *walk++ = ' ';

 return 0;
}
