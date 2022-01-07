
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable_compare_arg {char* key; } ;
struct nft_chain {int name; } ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static int nft_chain_hash_cmp(struct rhashtable_compare_arg *arg,
         const void *ptr)
{
 const struct nft_chain *chain = ptr;
 const char *name = arg->key;

 return strcmp(chain->name, name);
}
