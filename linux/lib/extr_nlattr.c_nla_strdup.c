
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
typedef int gfp_t ;


 char* kmalloc (size_t,int ) ;
 int memcpy (char*,char*,size_t) ;
 char* nla_data (struct nlattr const*) ;
 size_t nla_len (struct nlattr const*) ;

char *nla_strdup(const struct nlattr *nla, gfp_t flags)
{
 size_t srclen = nla_len(nla);
 char *src = nla_data(nla), *dst;

 if (srclen > 0 && src[srclen - 1] == '\0')
  srclen--;

 dst = kmalloc(srclen + 1, flags);
 if (dst != ((void*)0)) {
  memcpy(dst, src, srclen);
  dst[srclen] = '\0';
 }
 return dst;
}
