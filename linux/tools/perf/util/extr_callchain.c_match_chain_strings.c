
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum match_result { ____Placeholder_match_result } match_result ;


 int MATCH_EQ ;
 int MATCH_ERROR ;
 int MATCH_GT ;
 int MATCH_LT ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static enum match_result match_chain_strings(const char *left,
          const char *right)
{
 enum match_result ret = MATCH_EQ;
 int cmp;

 if (left && right)
  cmp = strcmp(left, right);
 else if (!left && right)
  cmp = 1;
 else if (left && !right)
  cmp = -1;
 else
  return MATCH_ERROR;

 if (cmp != 0)
  ret = cmp < 0 ? MATCH_LT : MATCH_GT;

 return ret;
}
