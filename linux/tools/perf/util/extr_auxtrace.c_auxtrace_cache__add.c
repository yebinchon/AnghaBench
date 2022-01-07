
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct auxtrace_cache_entry {int hash; int key; } ;
struct auxtrace_cache {scalar_t__ limit; scalar_t__ cnt; int bits; int * hashtable; } ;


 int auxtrace_cache__drop (struct auxtrace_cache*) ;
 size_t hash_32 (int ,int ) ;
 int hlist_add_head (int *,int *) ;

int auxtrace_cache__add(struct auxtrace_cache *c, u32 key,
   struct auxtrace_cache_entry *entry)
{
 if (c->limit && ++c->cnt > c->limit)
  auxtrace_cache__drop(c);

 entry->key = key;
 hlist_add_head(&entry->hash, &c->hashtable[hash_32(key, c->bits)]);

 return 0;
}
