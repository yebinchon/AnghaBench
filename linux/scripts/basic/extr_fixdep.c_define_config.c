
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int len; unsigned int hash; struct item* next; int name; } ;


 unsigned int HASHSZ ;
 int exit (int) ;
 struct item** hashtab ;
 struct item* malloc (int) ;
 int memcpy (int ,char const*,int) ;
 int perror (char*) ;

__attribute__((used)) static void define_config(const char *name, int len, unsigned int hash)
{
 struct item *aux = malloc(sizeof(*aux) + len);

 if (!aux) {
  perror("fixdep:malloc");
  exit(1);
 }
 memcpy(aux->name, name, len);
 aux->len = len;
 aux->hash = hash;
 aux->next = hashtab[hash % HASHSZ];
 hashtab[hash % HASHSZ] = aux;
}
