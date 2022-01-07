
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {unsigned int hash; int len; int name; struct item* next; } ;


 unsigned int HASHSZ ;
 struct item** hashtab ;
 scalar_t__ memcmp (int ,char const*,int) ;

__attribute__((used)) static int is_defined_config(const char *name, int len, unsigned int hash)
{
 struct item *aux;

 for (aux = hashtab[hash % HASHSZ]; aux; aux = aux->next) {
  if (aux->hash == hash && aux->len == len &&
      memcmp(aux->name, name, len) == 0)
   return 1;
 }
 return 0;
}
