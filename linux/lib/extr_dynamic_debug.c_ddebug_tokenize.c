
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int EINVAL ;
 int isspace (char) ;
 int pr_cont (char*,...) ;
 int pr_err (char*,...) ;
 int pr_info (char*) ;
 char* skip_spaces (char*) ;
 scalar_t__ verbose ;

__attribute__((used)) static int ddebug_tokenize(char *buf, char *words[], int maxwords)
{
 int nwords = 0;

 while (*buf) {
  char *end;


  buf = skip_spaces(buf);
  if (!*buf)
   break;
  if (*buf == '#')
   break;


  if (*buf == '"' || *buf == '\'') {
   int quote = *buf++;
   for (end = buf; *end && *end != quote; end++)
    ;
   if (!*end) {
    pr_err("unclosed quote: %s\n", buf);
    return -EINVAL;
   }
  } else {
   for (end = buf; *end && !isspace(*end); end++)
    ;
   BUG_ON(end == buf);
  }


  if (nwords == maxwords) {
   pr_err("too many words, legal max <=%d\n", maxwords);
   return -EINVAL;
  }
  if (*end)
   *end++ = '\0';
  words[nwords++] = buf;
  buf = end;
 }

 if (verbose) {
  int i;
  pr_info("split into words:");
  for (i = 0; i < nwords; i++)
   pr_cont(" \"%s\"", words[i]);
  pr_cont("\n");
 }

 return nwords;
}
