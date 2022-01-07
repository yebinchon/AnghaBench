
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static void
copy_class_filename(const char * class_sign, const char * file_name, char * result, size_t max_length)
{



 if (*class_sign == 'L') {
  int j, i = 0;
  char *p = strrchr(class_sign, '/');
  if (p) {

   for (i = 0; i < (p - class_sign); i++)
    result[i] = class_sign[i+1];
  }




  for (j = 0; i < (max_length - 1) && file_name && j < strlen(file_name); j++, i++)
   result[i] = file_name[j];

  result[i] = '\0';
 } else {

  strlcpy(result, file_name, max_length);
 }
}
