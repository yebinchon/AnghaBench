
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utf8leaf_t ;
struct tree {int maxage; } ;


 size_t LEAF_GEN (int *) ;
 int UTF8HANGULLEAF ;
 int* ages ;
 int utf8clen (char const*) ;
 int * utf8lookup (struct tree*,unsigned char*,char const*) ;

int utf8agemin(struct tree *tree, const char *s)
{
 utf8leaf_t *leaf;
 int age;
 int leaf_age;
 unsigned char hangul[UTF8HANGULLEAF];

 if (!tree)
  return -1;
 age = tree->maxage;
 while (*s) {
  leaf = utf8lookup(tree, hangul, s);
  if (!leaf)
   return -1;
  leaf_age = ages[LEAF_GEN(leaf)];
  if (leaf_age <= tree->maxage && leaf_age < age)
   age = leaf_age;
  s += utf8clen(s);
 }
 return age;
}
