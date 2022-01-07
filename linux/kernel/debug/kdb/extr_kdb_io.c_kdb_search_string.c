
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ kdb_grep_leading ;
 scalar_t__ kdb_grep_trailing ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int kdb_search_string(char *searched, char *searchfor)
{
 char firstchar, *cp;
 int len1, len2;


 len1 = strlen(searched)-1;
 len2 = strlen(searchfor);
 if (len1 < len2)
  return 0;
 if (kdb_grep_leading && kdb_grep_trailing && len1 != len2)
  return 0;
 if (kdb_grep_leading) {
  if (!strncmp(searched, searchfor, len2))
   return 1;
 } else if (kdb_grep_trailing) {
  if (!strncmp(searched+len1-len2, searchfor, len2))
   return 1;
 } else {
  firstchar = *searchfor;
  cp = searched;
  while ((cp = strchr(cp, firstchar))) {
   if (!strncmp(cp, searchfor, len2))
    return 1;
   cp++;
  }
 }
 return 0;
}
