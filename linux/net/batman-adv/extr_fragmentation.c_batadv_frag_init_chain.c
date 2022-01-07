
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct batadv_frag_table_entry {scalar_t__ seqno; scalar_t__ size; int fragment_list; int lock; } ;


 int batadv_frag_clear_chain (int *,int) ;
 int hlist_empty (int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static bool batadv_frag_init_chain(struct batadv_frag_table_entry *chain,
       u16 seqno)
{
 lockdep_assert_held(&chain->lock);

 if (chain->seqno == seqno)
  return 0;

 if (!hlist_empty(&chain->fragment_list))
  batadv_frag_clear_chain(&chain->fragment_list, 1);

 chain->size = 0;
 chain->seqno = seqno;

 return 1;
}
