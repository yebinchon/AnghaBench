
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smack_parsed_rule {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ isspace (char) ;
 int smk_fill_rule (char*,char*,char*,char*,struct smack_parsed_rule*,int,int ) ;

__attribute__((used)) static ssize_t smk_parse_long_rule(char *data, struct smack_parsed_rule *rule,
    int import, int tokens)
{
 ssize_t cnt = 0;
 char *tok[4];
 int rc;
 int i;




 for (i = 0; i < tokens; ++i) {
  while (isspace(data[cnt]))
   data[cnt++] = '\0';

  if (data[cnt] == '\0')

   return -EINVAL;

  tok[i] = data + cnt;

  while (data[cnt] && !isspace(data[cnt]))
   ++cnt;
 }
 while (isspace(data[cnt]))
  data[cnt++] = '\0';

 while (i < 4)
  tok[i++] = ((void*)0);

 rc = smk_fill_rule(tok[0], tok[1], tok[2], tok[3], rule, import, 0);
 return rc == 0 ? cnt : rc;
}
