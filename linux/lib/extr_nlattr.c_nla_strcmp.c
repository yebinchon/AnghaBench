
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 int memcmp (char*,char const*,int) ;
 char* nla_data (struct nlattr const*) ;
 int nla_len (struct nlattr const*) ;
 int strlen (char const*) ;

int nla_strcmp(const struct nlattr *nla, const char *str)
{
 int len = strlen(str);
 char *buf = nla_data(nla);
 int attrlen = nla_len(nla);
 int d;

 if (attrlen > 0 && buf[attrlen - 1] == '\0')
  attrlen--;

 d = attrlen - len;
 if (d == 0)
  d = memcmp(nla_data(nla), str, len);

 return d;
}
