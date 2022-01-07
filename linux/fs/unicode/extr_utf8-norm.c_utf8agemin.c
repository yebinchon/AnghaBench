
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utf8leaf_t ;
struct utf8data {int maxage; } ;


 size_t LEAF_GEN (int *) ;
 int UTF8HANGULLEAF ;
 int* utf8agetab ;
 int utf8clen (char const*) ;
 int * utf8lookup (struct utf8data const*,unsigned char*,char const*) ;

int utf8agemin(const struct utf8data *data, const char *s)
{
 utf8leaf_t *leaf;
 int age;
 int leaf_age;
 unsigned char hangul[UTF8HANGULLEAF];

 if (!data)
  return -1;
 age = data->maxage;
 while (*s) {
  leaf = utf8lookup(data, hangul, s);
  if (!leaf)
   return -1;
  leaf_age = utf8agetab[LEAF_GEN(leaf)];
  if (leaf_age <= data->maxage && leaf_age < age)
   age = leaf_age;
  s += utf8clen(s);
 }
 return age;
}
