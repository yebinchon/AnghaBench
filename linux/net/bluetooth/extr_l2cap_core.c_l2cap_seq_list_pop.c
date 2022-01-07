
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct l2cap_seq_list {size_t head; size_t mask; size_t* list; void* tail; } ;


 void* L2CAP_SEQ_LIST_CLEAR ;
 size_t L2CAP_SEQ_LIST_TAIL ;

__attribute__((used)) static inline u16 l2cap_seq_list_pop(struct l2cap_seq_list *seq_list)
{
 u16 seq = seq_list->head;
 u16 mask = seq_list->mask;

 seq_list->head = seq_list->list[seq & mask];
 seq_list->list[seq & mask] = L2CAP_SEQ_LIST_CLEAR;

 if (seq_list->head == L2CAP_SEQ_LIST_TAIL) {
  seq_list->head = L2CAP_SEQ_LIST_CLEAR;
  seq_list->tail = L2CAP_SEQ_LIST_CLEAR;
 }

 return seq;
}
