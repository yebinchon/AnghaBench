
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utf8leaf_t ;
struct utf8data {scalar_t__ maxage; } ;
typedef int ssize_t ;


 scalar_t__ DECOMPOSE ;
 scalar_t__ LEAF_CCC (int *) ;
 size_t LEAF_GEN (int *) ;
 int LEAF_STR (int *) ;
 int UTF8HANGULLEAF ;
 scalar_t__ strlen (int ) ;
 scalar_t__* utf8agetab ;
 scalar_t__ utf8clen (char const*) ;
 int * utf8lookup (struct utf8data const*,unsigned char*,char const*) ;

ssize_t utf8len(const struct utf8data *data, const char *s)
{
 utf8leaf_t *leaf;
 size_t ret = 0;
 unsigned char hangul[UTF8HANGULLEAF];

 if (!data)
  return -1;
 while (*s) {
  leaf = utf8lookup(data, hangul, s);
  if (!leaf)
   return -1;
  if (utf8agetab[LEAF_GEN(leaf)] > data->maxage)
   ret += utf8clen(s);
  else if (LEAF_CCC(leaf) == DECOMPOSE)
   ret += strlen(LEAF_STR(leaf));
  else
   ret += utf8clen(s);
  s += utf8clen(s);
 }
 return ret;
}
