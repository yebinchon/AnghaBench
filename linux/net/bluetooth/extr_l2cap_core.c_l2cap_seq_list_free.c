
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_seq_list {int list; } ;


 int kfree (int ) ;

__attribute__((used)) static inline void l2cap_seq_list_free(struct l2cap_seq_list *seq_list)
{
 kfree(seq_list->list);
}
