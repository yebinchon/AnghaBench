
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utf8leaf_t ;
struct tree {int dummy; } ;


 int * utf8nlookup (struct tree*,unsigned char*,char const*,size_t) ;

__attribute__((used)) static utf8leaf_t *utf8lookup(struct tree *tree, unsigned char *hangul,
         const char *s)
{
 return utf8nlookup(tree, hangul, s, (size_t)-1);
}
