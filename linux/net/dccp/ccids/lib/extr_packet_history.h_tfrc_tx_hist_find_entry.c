
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct tfrc_tx_hist_entry {scalar_t__ seqno; struct tfrc_tx_hist_entry* next; } ;



__attribute__((used)) static inline struct tfrc_tx_hist_entry *
 tfrc_tx_hist_find_entry(struct tfrc_tx_hist_entry *head, u64 seqno)
{
 while (head != ((void*)0) && head->seqno != seqno)
  head = head->next;
 return head;
}
