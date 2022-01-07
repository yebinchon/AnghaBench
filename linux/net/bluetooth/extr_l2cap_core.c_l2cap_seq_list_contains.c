
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct l2cap_seq_list {scalar_t__* list; size_t mask; } ;


 scalar_t__ L2CAP_SEQ_LIST_CLEAR ;

__attribute__((used)) static inline bool l2cap_seq_list_contains(struct l2cap_seq_list *seq_list,
        u16 seq)
{

 return seq_list->list[seq & seq_list->mask] != L2CAP_SEQ_LIST_CLEAR;
}
