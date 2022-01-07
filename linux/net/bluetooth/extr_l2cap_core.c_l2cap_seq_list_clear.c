
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct l2cap_seq_list {scalar_t__ head; size_t mask; scalar_t__ tail; scalar_t__* list; } ;


 scalar_t__ L2CAP_SEQ_LIST_CLEAR ;

__attribute__((used)) static void l2cap_seq_list_clear(struct l2cap_seq_list *seq_list)
{
 u16 i;

 if (seq_list->head == L2CAP_SEQ_LIST_CLEAR)
  return;

 for (i = 0; i <= seq_list->mask; i++)
  seq_list->list[i] = L2CAP_SEQ_LIST_CLEAR;

 seq_list->head = L2CAP_SEQ_LIST_CLEAR;
 seq_list->tail = L2CAP_SEQ_LIST_CLEAR;
}
