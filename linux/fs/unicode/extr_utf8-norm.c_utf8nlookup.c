
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utf8trie_t ;
typedef int utf8leaf_t ;
struct utf8data {int offset; } ;


 int BITNUM ;
 scalar_t__ DECOMPOSE ;
 scalar_t__ HANGUL ;
 scalar_t__ LEAF_CCC (int*) ;
 scalar_t__* LEAF_STR (int*) ;
 int LEFTNODE ;
 int NEXTBYTE ;
 int OFFLEN ;
 int OFFLEN_SHIFT ;
 int RIGHTNODE ;
 int RIGHTPATH ;
 int TRIENODE ;
 int* utf8data ;
 int* utf8hangul (char const*,unsigned char*) ;

__attribute__((used)) static utf8leaf_t *utf8nlookup(const struct utf8data *data,
          unsigned char *hangul, const char *s, size_t len)
{
 utf8trie_t *trie = ((void*)0);
 int offlen;
 int offset;
 int mask;
 int node;

 if (!data)
  return ((void*)0);
 if (len == 0)
  return ((void*)0);

 trie = utf8data + data->offset;
 node = 1;
 while (node) {
  offlen = (*trie & OFFLEN) >> OFFLEN_SHIFT;
  if (*trie & NEXTBYTE) {
   if (--len == 0)
    return ((void*)0);
   s++;
  }
  mask = 1 << (*trie & BITNUM);
  if (*s & mask) {

   if (offlen) {

    node = (*trie & RIGHTNODE);
    offset = trie[offlen];
    while (--offlen) {
     offset <<= 8;
     offset |= trie[offlen];
    }
    trie += offset;
   } else if (*trie & RIGHTPATH) {

    node = (*trie & TRIENODE);
    trie++;
   } else {

    return ((void*)0);
   }
  } else {

   if (offlen) {

    node = (*trie & LEFTNODE);
    trie += offlen + 1;
   } else if (*trie & RIGHTPATH) {

    return ((void*)0);
   } else {

    node = (*trie & TRIENODE);
    trie++;
   }
  }
 }






 if (LEAF_CCC(trie) == DECOMPOSE && LEAF_STR(trie)[0] == HANGUL)
  trie = utf8hangul(s - 2, hangul);
 return trie;
}
