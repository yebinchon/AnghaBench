
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddebug_query {int dummy; } ;


 int EINVAL ;
 int MAXWORDS ;
 int ddebug_change (struct ddebug_query*,unsigned int,unsigned int) ;
 scalar_t__ ddebug_parse_flags (char*,unsigned int*,unsigned int*) ;
 scalar_t__ ddebug_parse_query (char**,int,struct ddebug_query*,char const*) ;
 int ddebug_tokenize (char*,char**,int) ;
 int pr_err (char*) ;
 int vpr_info_dq (struct ddebug_query*,char*) ;

__attribute__((used)) static int ddebug_exec_query(char *query_string, const char *modname)
{
 unsigned int flags = 0, mask = 0;
 struct ddebug_query query;

 int nwords, nfound;
 char *words[9];

 nwords = ddebug_tokenize(query_string, words, 9);
 if (nwords <= 0) {
  pr_err("tokenize failed\n");
  return -EINVAL;
 }

 if (ddebug_parse_flags(words[nwords-1], &flags, &mask)) {
  pr_err("flags parse failed\n");
  return -EINVAL;
 }
 if (ddebug_parse_query(words, nwords-1, &query, modname)) {
  pr_err("query parse failed\n");
  return -EINVAL;
 }

 nfound = ddebug_change(&query, flags, mask);
 vpr_info_dq(&query, nfound ? "applied" : "no-match");

 return nfound;
}
