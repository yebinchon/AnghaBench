
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct xa_state {unsigned long xa_index; scalar_t__ xa; } ;
struct exceptional_entry_key {unsigned long entry_start; scalar_t__ xa; } ;


 int DAX_WAIT_TABLE_BITS ;
 unsigned long PG_PMD_COLOUR ;
 scalar_t__ dax_is_pmd_entry (void*) ;
 unsigned long hash_long (unsigned long,int ) ;
 int * wait_table ;

__attribute__((used)) static wait_queue_head_t *dax_entry_waitqueue(struct xa_state *xas,
  void *entry, struct exceptional_entry_key *key)
{
 unsigned long hash;
 unsigned long index = xas->xa_index;






 if (dax_is_pmd_entry(entry))
  index &= ~PG_PMD_COLOUR;
 key->xa = xas->xa;
 key->entry_start = index;

 hash = hash_long((unsigned long)xas->xa ^ index, DAX_WAIT_TABLE_BITS);
 return wait_table + hash;
}
