
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int INDENT ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void add_key(struct strbuf *sb, const char *str, int *llen)
{
 if (*llen >= 75) {
  strbuf_addstr(sb, "\n\t\t\t ");
  *llen = INDENT;
 }
 strbuf_addf(sb, " %s", str);
 *llen += strlen(str) + 1;
}
