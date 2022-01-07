
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 int memcpy (char*,char*,size_t) ;
 int memset (char*,int ,size_t) ;
 char* nla_data (struct nlattr const*) ;
 size_t nla_len (struct nlattr const*) ;

size_t nla_strlcpy(char *dst, const struct nlattr *nla, size_t dstsize)
{
 size_t srclen = nla_len(nla);
 char *src = nla_data(nla);

 if (srclen > 0 && src[srclen - 1] == '\0')
  srclen--;

 if (dstsize > 0) {
  size_t len = (srclen >= dstsize) ? dstsize - 1 : srclen;

  memset(dst, 0, dstsize);
  memcpy(dst, src, len);
 }

 return srclen;
}
