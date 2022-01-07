
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KDB_GREP_STRLEN ;
 scalar_t__ isspace (char) ;
 int kdb_grep_leading ;
 int kdb_grep_string ;
 int kdb_grep_trailing ;
 int kdb_grepping_flag ;
 int kdb_printf (char*) ;
 int str_has_prefix (char*,char*) ;
 char* strchr (char*,char) ;
 int strcpy (int ,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void parse_grep(const char *str)
{
 int len;
 char *cp = (char *)str, *cp2;


 if (*cp != '|')
  return;
 cp++;
 while (isspace(*cp))
  cp++;
 if (!str_has_prefix(cp, "grep ")) {
  kdb_printf("invalid 'pipe', see grephelp\n");
  return;
 }
 cp += 5;
 while (isspace(*cp))
  cp++;
 cp2 = strchr(cp, '\n');
 if (cp2)
  *cp2 = '\0';
 len = strlen(cp);
 if (len == 0) {
  kdb_printf("invalid 'pipe', see grephelp\n");
  return;
 }

 if (*cp == '"') {


  cp++;
  cp2 = strchr(cp, '"');
  if (!cp2) {
   kdb_printf("invalid quoted string, see grephelp\n");
   return;
  }
  *cp2 = '\0';
 }
 kdb_grep_leading = 0;
 if (*cp == '^') {
  kdb_grep_leading = 1;
  cp++;
 }
 len = strlen(cp);
 kdb_grep_trailing = 0;
 if (*(cp+len-1) == '$') {
  kdb_grep_trailing = 1;
  *(cp+len-1) = '\0';
 }
 len = strlen(cp);
 if (!len)
  return;
 if (len >= KDB_GREP_STRLEN) {
  kdb_printf("search string too long\n");
  return;
 }
 strcpy(kdb_grep_string, cp);
 kdb_grepping_flag++;
 return;
}
