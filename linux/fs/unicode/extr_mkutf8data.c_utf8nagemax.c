
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utf8leaf_t ;
struct tree {int maxage; } ;


 size_t LEAF_GEN (int *) ;
 int UTF8HANGULLEAF ;
 int* ages ;
 scalar_t__ utf8clen (char const*) ;
 int * utf8nlookup (struct tree*,unsigned char*,char const*,size_t) ;

int utf8nagemax(struct tree *tree, const char *s, size_t len)
{
 utf8leaf_t *leaf;
 int age = 0;
 int leaf_age;
 unsigned char hangul[UTF8HANGULLEAF];

 if (!tree)
  return -1;

        while (len && *s) {
  leaf = utf8nlookup(tree, hangul, s, len);
  if (!leaf)
   return -1;
  leaf_age = ages[LEAF_GEN(leaf)];
  if (leaf_age <= tree->maxage && leaf_age > age)
   age = leaf_age;
  len -= utf8clen(s);
  s += utf8clen(s);
 }
 return age;
}
