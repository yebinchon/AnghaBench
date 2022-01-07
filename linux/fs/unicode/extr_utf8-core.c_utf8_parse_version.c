
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int version_string ;
typedef int substring_t ;
struct match_token {int member_0; char* member_1; } ;


 int EINVAL ;
 scalar_t__ match_int (int *,unsigned int*) ;
 int match_token (char*,struct match_token const*,int *) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static int utf8_parse_version(const char *version, unsigned int *maj,
         unsigned int *min, unsigned int *rev)
{
 substring_t args[3];
 char version_string[12];
 static const struct match_token token[] = {
  {1, "%d.%d.%d"},
  {0, ((void*)0)}
 };

 strncpy(version_string, version, sizeof(version_string));

 if (match_token(version_string, token, args) != 1)
  return -EINVAL;

 if (match_int(&args[0], maj) || match_int(&args[1], min) ||
     match_int(&args[2], rev))
  return -EINVAL;

 return 0;
}
