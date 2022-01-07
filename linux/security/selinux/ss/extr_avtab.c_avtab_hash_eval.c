
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct avtab_node {struct avtab_node* next; } ;
struct avtab {int nslot; int nel; struct avtab_node** htable; } ;


 int pr_debug (char*,char*,int ,int,int,int,unsigned long long) ;

void avtab_hash_eval(struct avtab *h, char *tag)
{
 int i, chain_len, slots_used, max_chain_len;
 unsigned long long chain2_len_sum;
 struct avtab_node *cur;

 slots_used = 0;
 max_chain_len = 0;
 chain2_len_sum = 0;
 for (i = 0; i < h->nslot; i++) {
  cur = h->htable[i];
  if (cur) {
   slots_used++;
   chain_len = 0;
   while (cur) {
    chain_len++;
    cur = cur->next;
   }

   if (chain_len > max_chain_len)
    max_chain_len = chain_len;
   chain2_len_sum += chain_len * chain_len;
  }
 }

 pr_debug("SELinux: %s:  %d entries and %d/%d buckets used, "
        "longest chain length %d sum of chain length^2 %llu\n",
        tag, h->nel, slots_used, h->nslot, max_chain_len,
        chain2_len_sum);
}
