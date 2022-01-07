
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct match_token {int token; char const* pattern; } ;


 int Opt_err ;
 int strchr (char const*,char) ;
 struct match_token* tokens ;

__attribute__((used)) static const char *token2str(int token)
{
 const struct match_token *t;

 for (t = tokens; t->token != Opt_err; t++)
  if (t->token == token && !strchr(t->pattern, '='))
   break;
 return t->pattern;
}
