
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trie {int dummy; } ;
struct key_vector {int dummy; } ;


 int IS_TRIE (struct key_vector*) ;
 struct key_vector* resize (struct trie*,struct key_vector*) ;

__attribute__((used)) static void trie_rebalance(struct trie *t, struct key_vector *tn)
{
 while (!IS_TRIE(tn))
  tn = resize(t, tn);
}
