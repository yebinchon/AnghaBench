
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smack_parsed_rule {int dummy; } ;


 int SMK_LABELLEN ;
 int smk_fill_rule (char const*,char const*,char const*,int *,struct smack_parsed_rule*,int,int) ;

__attribute__((used)) static int smk_parse_rule(const char *data, struct smack_parsed_rule *rule,
    int import)
{
 int rc;

 rc = smk_fill_rule(data, data + SMK_LABELLEN,
      data + SMK_LABELLEN + SMK_LABELLEN, ((void*)0), rule,
      import, SMK_LABELLEN);
 return rc;
}
